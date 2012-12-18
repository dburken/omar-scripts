//---
// File: divideRepository.groovy
// Author: Scott Bortman
// Discription: 
//---

@Grapes([
    @Grab('postgresql:postgresql:9.1-901.jdbc4'),
    @GrabConfig(systemClassLoader=true)     
])
import groovy.sql.Sql

def rootDir = "/mnt/omar-test-data"

def sql = Sql.newInstance(
    url: 'jdbc:postgresql:raleigh-prod', driver: 'org.postgresql.Driver',
    user: 'postgres', password: 'postgres')

findOrCreateRepositories(sql, rootDir)

sql?.close()


def changeRepository(def sql, def repository)
{
    def q1 = "update raster_data_set set repository_id=? where id=?"

    def q2 = """
        select distinct rds.id as id 
        from raster_entry re, raster_data_set rds 
        where rds.repository_id <> ? 
        and re.raster_data_set_id=rds.id 
        and re.filename like ?
        """ as String

    def count = 0
    def batchSize = 1000
    
    sql.withTransaction {
        sql.withBatch(batchSize, q1) { stmt ->
            sql.eachRow(q2, [repository.id, "${repository.repository_base_dir}%" as String]) { r2 ->
                stmt.addBatch([repository.id, r2.id])
                if ( ++count % batchSize == 0 ) { println "\t${count}" }
            }                
        }        
    }
    
    println "\t${count}"
}

def getRasterEntryCount(def sql, def repository)
{
    def q2 = """
        select distinct count(rds.id) 
        from raster_entry re, raster_data_set rds 
        where rds.repository_id <> ? 
        and re.raster_data_set_id=rds.id 
        and re.filename like ?
        """ as String
        
    def count = sql.firstRow(q2, [repository.id, "${repository.repository_base_dir}%" as String]).count

    return count
}

def findOrCreateRepositories(def sql, def rootDir)
{
    def position = rootDir.split('/').size() + 1
    def q1 = "select distinct split_part(filename, '/', ?) as x from raster_entry order by x"   
    
    sql.eachRow(q1, [position]) { r1 -> 
        def baseDir = "${rootDir}/${r1.x}" as String  
        def repository = findOrCreateRepository(sql, baseDir)
        def count = getRasterEntryCount(sql, repository)
               
        println "${r1.x}: ${count}" 

        if ( count > 0 )
        {                       
            changeRepository(sql, repository)
        }    
    }     
}

def findOrCreateRepository(def sql, def baseDir)
{
    def repository = sql.firstRow("select * from repository where repository_base_dir=?", [baseDir])
    
    if ( ! repository )
    {
        println "Creating new repository: ${baseDir}"
        
        def x = sql.executeInsert(
            "insert into repository ( version, repository_base_dir ) values ( 0, ? )"
            , [baseDir] ).first()
        
        repository = [
            id: x[0], 
            version: x[1], 
            repository_base_dir: x[2], 
            scan_start_date: x[3], 
            scan_end_date: x[4]
        ]
        //println repository
    }
    //else
    //{
    //    println "Found respository: ${repository}"
    //}

    return repository
}
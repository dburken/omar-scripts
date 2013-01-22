import joms.oms.DataInfo
import joms.oms.Init

import org.ossim.omar.core.Repository
import org.ossim.omar.raster.RasterDataSet

import geoscript.geom.Point 

import org.apache.commons.lang.RandomStringUtils
import org.apache.commons.io.FilenameUtils

import org.codehaus.groovy.grails.plugins.DomainClassGrailsPlugin

Init.instance().initialize()

class RasterDataSetGenerator
{
//    def file = "/data/celtic/staged/003/po_105216_pan_0000000.ntf" as File
    def file = "/data/celtic/staged/004/03MAR22074047-M2AS_R2C2-000000042261_01_P001.NTF" as File
    def fileTypes = ['aaigrid', 'cadrg', 'ccf', 'cib', 'doqq', 'dted', 'jpeg', 'jpeg2000', 'landsat7', 'nitf', 'tiff', 'unspecified']
    def missions = ['Toyota', 'Ford', 'Honda', 'Chevrolet', 'Mercedes-Benz', 'BMW', 'Volvo', 'Cadillac', 'Lexus', 'Tesla']
    def sensors = ['ALPHA', 'BRAVO', 'CHARLIE', 'DELTA', 'ECHO', 'FOXTROT']
    def baseDir = '/'
    def rng = new Random()
    
    def sessionFactory
    def propertyInstanceMap = DomainClassGrailsPlugin.PROPERTY_INSTANCE_MAP
    def batchSize = 100
    
    def readTemplate()
    {
        def dataInfo = new DataInfo()
        def template = null
        
        if ( dataInfo.open( file.absolutePath ) )
        {
            template = new XmlSlurper().parseText(dataInfo.info)
        }
        
        dataInfo?.close()
        template
    }
        
    def createAcquisitionDate()
    {
        def cal = Calendar.instance
        
        def year = rng.nextInt(13) + 2000  
        def month = rng.nextInt(12)
        def day = rng.nextInt(cal.getActualMaximum(cal.get(Calendar.DAY_OF_MONTH))) + 1
        def hour = rng.nextInt(24)
        def minute = rng.nextInt(60)
        def second = rng.nextInt(60)
        
        cal.set(Calendar.YEAR, year) 
        cal.set(Calendar.MONTH, month)     
        cal.set(Calendar.DATE, day)
        cal.set(Calendar.HOUR, hour) 
        cal.set(Calendar.MINUTE, minute) 
        cal.set(Calendar.SECOND, second)  
        cal.time       
    }
    
    def createRandomFileType()
    {        
        fileTypes[new Random().nextInt(fileTypes.size())]
    }
    
    def createRandomGroundGeom()
    {
        def centerLat = rng.nextDouble() * 180 - 90
        def centerLon = rng.nextDouble() * 360 - 180    
        def point = new Point(centerLon, centerLat)
        def radius = rng.nextInt(10) + 1
        def buffer = point.buffer(radius).bounds.polygon
        
        buffer.g                
    }
    
    def createRandomMissionId()
    {        
        missions[rng.nextInt(missions.size())]
    }
    
    def createRandomSensorId()
    {
        sensors[rng.nextInt(sensors.size())]
    }
        
    def createRandomRasterDataSet(def count=1)
    {
        def repository = Repository.findOrCreateWhere(baseDir: baseDir)

        repository.save()
        
        def template = readTemplate()
                
        if ( template )
        {    
            for ( def index in 0..<count ) 
            {        
                def rasterDataSets = template.dataSets.RasterDataSet.each { rasterDataSetNode -> 
                    def rasterDataSet = RasterDataSet.initRasterDataSet(rasterDataSetNode)
                    
                    rasterDataSet.repository = repository
                    
                    def acquisitionDate = createAcquisitionDate()
                    def fileType = createRandomFileType()
                    def groundGeom = createRandomGroundGeom()
                    def missionId = createRandomMissionId()
                    def sensorId = createRandomSensorId()
                    def filename = "/${acquisitionDate.format('yyyy/MM/dd')}/${missionId}/${sensorId}/${RandomStringUtils.randomAlphanumeric(10)}"
                    
                    rasterDataSet.fileObjects.each { rasterFile ->
                        rasterFile.name =  "${filename}.${FilenameUtils.getExtension(rasterFile.name)}"    
                    }
                   
                    rasterDataSet.rasterEntries.each { rasterEntry ->
                        rasterEntry.acquisitionDate = acquisitionDate
                        rasterEntry.fileType = fileType
                        rasterEntry.groundGeom = groundGeom
                        rasterEntry.missionId = missionId
                        rasterEntry.sensorId = sensorId
                        rasterEntry.filename = filename
                        rasterEntry.indexId = filename.encodeAsSHA256()                        
                    }
                                        
                    if ( ! rasterDataSet.save() )
                    {
                        rasterDataSet.errors.allErrors.each { println it }
                    }
                    
                    if (index % batchSize == 0) { cleanUpGorm() }
                }
            } 
        }   
    }
    
    def cleanUpGorm() 
    {
        def session = sessionFactory.currentSession
        session.flush()
        session.clear()
        propertyInstanceMap.get().clear()
    }
}

def start = System.currentTimeMillis()

new RasterDataSetGenerator(sessionFactory: ctx.sessionFactory).createRandomRasterDataSet(1)

def stop = System.currentTimeMillis()

println "${stop - start}"

return 0

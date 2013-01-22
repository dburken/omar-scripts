import org.ossim.omar.core.Repository
import org.ossim.omar.raster.RasterDataSet

println Repository.list().baseDir

Repository.withTransaction {

    def repository = Repository.findByBaseDir('/data/celtic' )
    
    def results = RasterDataSet.createCriteria().scroll() {
        eq('repository', repository)
    }    
    
    while ( results.next() )
    {
        def x = results.get(0)
        
        x.delete()
    }        
    
    results.close()
    repository.delete()
}

println Repository.list().baseDir
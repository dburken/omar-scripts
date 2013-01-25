//---
// File: deleteRepo.groovy
// To run do:
// Edit below repository name.
// $ cd $OMAR_HOME
// $ grails prod run-script /work/test/omar-scripts/deleteRepo.groovy
//---

import org.ossim.omar.core.Repository
import org.ossim.omar.raster.RasterDataSet

println Repository.list().baseDir

Repository.withTransaction {

    // Edit below line with the repository you want to delete:
    def repository = Repository.findByBaseDir('/data3/doconnor/image_mart1' )
    
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

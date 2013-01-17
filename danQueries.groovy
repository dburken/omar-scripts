import groovy.sql.Sql

def sql = Sql.newInstance(ctx.dataSource)

def id = 1000000
def indexId = '840b7d5db8dcc211105aeb456c03b8b057da93b343dbf639773cc77b306ea8b3'

def queries = [

	[
		cmd: """
			select *
			from raster_entry  
			where (id=?) limit 1
			""",
	 	params: [id]
	 ],

	[
		cmd: """
			select *
			from raster_entry  
			where (id=? or index_id=? or title=?) limit 1
			""",
	 	params: [id, indexId, '']
	 ],

	[
		cmd: """
			select *
			from raster_entry  
			where (index_id=? or title=?) limit 1
			""",
		params: [indexId, '']
	],


	[
		cmd: """
			select * 
			from raster_entry  
			where title in (?) or index_id in (?) limit 1
			""",
		params: [indexId, '']
	],

	[
		cmd:  """
			select *
			from raster_entry_file  
			where raster_entry_id=?    
			""",
		params: [id]	
	]
]

queries.eachWithIndex { query, i ->
	println "Query: ${i}"

	def start = System.currentTimeMillis()
	def row = sql.firstRow(query.cmd, query.params)
	def stop = System.currentTimeMillis()

	println "Elapsed: ${stop - start}ms"
}


sql?.close()
eval
walk: aVar env: anEnv o: aVal

^ [ :var :val :env | "Lookup"	
		{anEnv === ((var cons: val) cons: env).
			{{ aVar === var. aVal ===  val }.
			{ aVar =/= var. self walk: aVar env: env o: aVal }} conde } ] fresh tag: #walk. 
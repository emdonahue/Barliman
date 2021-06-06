helpers
walk: aVar env: anEnv o: aVal
		^ (anEnv carCdrResto: [ :var :val :env | "Lookup"
		{{ aVar === var. aVal ===  val }.
			{ aVar =/= var. self walk: aVar env: env o: aVal }} conde ]) tag: #walk. 
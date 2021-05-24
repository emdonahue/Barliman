eval
walk: aVar env: anEnv o: aVal
	^ anEnv match2: #((_ | _) | _) o: [ :var :val :env |
		{{ aVar === var. aVal ===  val }.
			{ aVar =/= var. self walk: aVar env: env o: aVal }} conde ]. 
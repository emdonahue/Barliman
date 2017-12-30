as yet unclassified
eval: anExpr env: anEnv val: aVal
	^ (self lookup: anExpr env: anEnv val: aVal)
	| (self apply: anExpr env: anEnv val: aVal)
		|
			(anExpr
				carCdrIn: [ :rator :rand | 
					(self
						quote: rator
						expr: rand
						env: anEnv
						val: aVal)
						|
							(self
								list: rator
								expr: rand
								env: anEnv
								val: aVal)
						|
							(self
								lambda: rator
								expr: rand
								env: anEnv
								val: aVal) ])
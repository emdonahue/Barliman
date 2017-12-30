parameters
not: aSym inEnvo: anEnv
	^ anEnv isEmptyo | (anEnv carCdrIn: [ :kv :rest | kv carCdrIn: [ :k :v | k =/= aSym & (self not: aSym inEnvo: rest) ] ])
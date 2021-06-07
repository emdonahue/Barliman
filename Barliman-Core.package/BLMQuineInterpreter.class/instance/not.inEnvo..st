parameters
not: aSym inEnvo: anEnv
	^ anEnv isEmptyo | (anEnv carCdro: [ :kv :rest | kv carCdro: [ :k :v | k =/= aSym & (self not: aSym inEnvo: rest) ] ])
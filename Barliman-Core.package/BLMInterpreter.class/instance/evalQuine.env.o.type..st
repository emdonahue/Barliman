eval
evalQuine: anExpr env: anEnv o: aVal type: aClauses
		| quote list lookup lambda apply |
	quote := (aClauses includes: #quote) ifTrue: SKGoal fail ifFalse: [ self quote: anExpr o: aVal ].
	lookup := (aClauses includes: #lookup) ifTrue: SKGoal fail ifFalse: [ self lookup: anExpr env: anEnv o: aVal ].
	lambda := (aClauses includes: #lambda) ifTrue: SKGoal fail ifFalse: [ self lambda: anExpr env: anEnv o: aVal ].
	list := (aClauses includes: #list) ifTrue: SKGoal fail ifFalse: [ self list: anExpr env: anEnv o: aVal ].
	apply := (aClauses includes: #apply) ifTrue: SKGoal fail ifFalse: [ self apply: anExpr env: anEnv o: aVal type: aClauses ].
		^ quote | ((list | lookup) | (lambda | apply)).
	
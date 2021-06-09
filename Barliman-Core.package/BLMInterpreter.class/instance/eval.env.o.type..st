eval
eval: anExpr env: anEnv o: aVal type: badTypes
	"self list: anExpr env: anEnv o: aVal."
	"self boolean: anExpr o: aVal."
	
	| quote null car cdr cons if lookup lambda apply |
	quote := (badTypes includes: #quote) ifTrue: SKGoal fail ifFalse: [ self quote: anExpr o: aVal ].
	null := (badTypes includes: #null) ifTrue: SKGoal fail ifFalse: [ self null: anExpr env: anEnv o: aVal ].
	car := (badTypes includes: #car) ifTrue: SKGoal fail ifFalse: [ self car: anExpr env: anEnv o: aVal ].
	cdr := (badTypes includes: #cdr) ifTrue: SKGoal fail ifFalse: [ self cdr: anExpr env: anEnv o: aVal ].
	cons := (badTypes includes: #cons) ifTrue: SKGoal fail ifFalse: [ self cons: anExpr env: anEnv o: aVal ].
	if := (badTypes includes: #if) ifTrue: SKGoal fail ifFalse: [ self if: anExpr env: anEnv o: aVal ].
	lookup := (badTypes includes: #lookup) ifTrue: SKGoal fail ifFalse: [ self lookup: anExpr env: anEnv o: aVal ].
	lambda := (badTypes includes: #lambda) ifTrue: SKGoal fail ifFalse: [ self lambda: anExpr env: anEnv o: aVal ].
	apply := (badTypes includes: #apply) ifTrue: SKGoal fail ifFalse: [ self apply: anExpr env: anEnv o: aVal type: badTypes ].
	^ (quote | (lambda | lookup))
		| ((null | cons)
		| ((car | cdr)
		| (if | apply))).
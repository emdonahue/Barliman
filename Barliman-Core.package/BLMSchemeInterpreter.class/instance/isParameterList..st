testing
isParameterList: paramList
	^ { paramList isEmptyo.
	[ :a :d | { paramList caro: a cdro: d. a isSymbolo. self isParameterList: d. self param: a notDuplicatedIn: d } ] } asGoal
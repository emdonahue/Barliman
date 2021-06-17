tests - ground
testExtend
	self assert: [ :q | interpreter extend: q env: 3 cons args: 1 cons vals: 2 cons ] asGoal run first first equals: ((1 cons: 2) cons: 3 cons).
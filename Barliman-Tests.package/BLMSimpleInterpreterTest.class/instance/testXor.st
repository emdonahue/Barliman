tests
testXor
	| prog synthesizer a b notA notB |
	self skip.
	prog := #(if b #(if a false true) a) asConsTree.
	a := #a cons: true.
	b := #b cons: true.
	notA := #a cons: false.
	notB := #b cons: false.
	self assert: [ :val | (interpreter eval: prog env: (a cons: b cons) val: val)] asGoal run equals: false cons cons.
	self assert: [ :val | (interpreter eval: prog env: (notA cons: b cons) val: val)] asGoal run equals: true cons cons.
	self assert: [ :val | (interpreter eval: prog env: (a cons: notB cons) val: val)] asGoal run equals: true cons cons.
	self assert: [ :val | (interpreter eval: prog env: (notA cons: notB cons) val: val)] asGoal run equals: false cons cons.
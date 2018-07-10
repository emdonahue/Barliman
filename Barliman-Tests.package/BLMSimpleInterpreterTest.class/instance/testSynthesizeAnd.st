tests
testSynthesizeAnd
	| synthesizer a b notA notB |
	a := #a cons: true.
	b := #b cons: true.
	notA := #a cons: false.
	notB := #b cons: false.
	synthesizer := [ :prog | 
	(interpreter eval: prog env: (a cons: b cons) val: true) & (interpreter eval: prog env: (a cons: notB cons) val: false)
		& (interpreter eval: prog env: (notA cons: b cons) val: false) & (interpreter eval: prog env: (notA cons: notB cons) val: false) ] asGoal run.
	self assert: synthesizer isNotEmpty.
	self assert: synthesizer first first first equals: #if.
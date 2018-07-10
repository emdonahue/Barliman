tests
testSynthesizeXor
	| synthesizer a b notA notB if |
	self skip.
	if := SKVar tag: #innerIF.
	if := #if cons: #a cons: false cons: true cons.
	a := #a cons: true.
	b := #b cons: true.
	notA := #a cons: false.
	notB := #b cons: false.
	synthesizer := [ :prog | 
	(interpreter eval: prog env: (a cons: b cons) val: false) & (interpreter eval: prog env: (a cons: notB cons) val: true)
		& (interpreter eval: prog env: (notA cons: b cons) val: true) & (interpreter eval: prog env: (notA cons: notB cons) val: false) ] asGoal runner.
	"self assert: synthesizer run first equals: #(if b #(if a false true) a) asConsTree cons."
	"(synthesizer runner next peek => prog) inspect."
	synthesizer inspect.
tests
testSynthesizeXor
	| prog synthesizer a b notA notB |
	self skip.
	prog := SKVar tag: #prog.
	a := #a cons: true.
	b := #b cons: true.
	notA := #a cons: false.
	notB := #b cons: false.
	synthesizer := (interpreter eval: prog env: (a cons: b cons) val: false) & (interpreter eval: prog env: (a cons: notB cons) val: true)
		& (interpreter eval: prog env: (notA cons: b cons) val: true) & (interpreter eval: prog env: (notA cons: notB cons) val: false).
	"self assert: synthesizer runner next peek => prog equals: #(if b #(if a false true) a) asConsTree"
	"(synthesizer runner next peek => prog) inspect"
	(synthesizer runner queryVars: prog cons) inspect
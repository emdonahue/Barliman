tests
testSynthesizeNot
	| prog synthesizer |
	prog := SKVar tag: #prog.
	synthesizer := (interpreter eval: prog env: (#input cons: true) cons val: false) & (interpreter eval: prog env: (#input cons: false) cons val: true).
	"(synthesizer runner queryVars: prog cons) inspect."
	self assert: synthesizer runner next peek => prog equals: (#if cons: #input cons: false cons: true cons)
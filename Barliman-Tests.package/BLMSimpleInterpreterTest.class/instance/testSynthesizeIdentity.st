tests
testSynthesizeIdentity
	| prog synthesizer |
	prog := SKVar tag: #prog.
	synthesizer := (interpreter eval: prog env: (#input cons: true) cons val: true) & (interpreter eval: prog env: (#input cons: false) cons val: false).
	self assert: synthesizer runner peek => prog equals: #input
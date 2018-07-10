tests
testSynthesizeNot
	| synthesizer |
	synthesizer := [ :prog | (interpreter eval: prog env: (#input cons: true) cons val: false) & (interpreter eval: prog env: (#input cons: false) cons val: true) ]
		asGoal run.
	self assert: synthesizer first first equals: (#if cons: #input cons: false cons: true cons).
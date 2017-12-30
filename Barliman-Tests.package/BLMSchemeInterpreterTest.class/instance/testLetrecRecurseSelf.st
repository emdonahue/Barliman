tests-letrec
testLetrecRecurseSelf
	| states |
	states := (BLMSchemeInterpreter new eval: #(letrec #(#(recurse #(lambda #() recurse))) #(recurse)) asConsTree out: x) runner runAll.
	self assert: states size equals: 1.
	self
		assert: states first => x
		equals:
			(BLMClosure tag
				cons: (#lambda cons: Cons empty cons: #recurse cons)
				cons: ((#rec cons: (#recurse cons: (#lambda cons: Cons empty cons: #recurse cons)) cons) cons: BLMSchemeInterpreter new initialEnvironment) cons)
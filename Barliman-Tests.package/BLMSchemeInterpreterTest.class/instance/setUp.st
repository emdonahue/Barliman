initialization
setUp
	x := SKVar new tag: #x. 
	x1y2 := (#val cons: (#x cons: 1)) cons: (#val cons: (#y cons: 2)) cons.
	five := BLMClosure tag cons: (#lambda cons: #x cons cons: (#quote cons: 5 cons) cons) cons: BLMSchemeInterpreter new initialEnvironment cons.
	empty := BLMClosure tag cons: (#lambda cons: #x cons cons: #list cons cons) cons: BLMSchemeInterpreter new initialEnvironment cons.
	lambda42 := #lambda cons: Cons empty cons: 42 cons.
	lambda51 := #lambda cons: Cons empty cons: 51 cons.
	recEnv := (#rec cons: ((#fourtyTwo cons: lambda42) cons: (#fiftyOne cons: lambda51) cons))
		cons: (#val cons: (#sixty cons: 60))
		cons: BLMSchemeInterpreter new initialEnvironment.
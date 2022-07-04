initialization
define: aSymbol as: aLambda andApplyTo: theArguments
	| states |
	states := (BLMSchemeInterpreter new
		eval: (#letrec cons: (aSymbol cons: aLambda asConsR cons) cons cons: (aSymbol cons: (theArguments collect: [:a | (#quote cons: a cons)  ])) cons)
		out: x) runner runAll.
	self assert: states size equals: 1.
	^ states first => x
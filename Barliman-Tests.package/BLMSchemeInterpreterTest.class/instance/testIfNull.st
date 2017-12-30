tests-if
testIfNull
	| states |
	states := (BLMSchemeInterpreter new eval: (#if cons: ('null?' asSymbol cons: (#quote cons: Cons empty cons) cons) cons: 42 cons: 51 cons) out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: 42
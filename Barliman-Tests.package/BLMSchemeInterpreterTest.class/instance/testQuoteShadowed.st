tests-quote
testQuoteShadowed
	| states |
	states := (BLMSchemeInterpreter new eval: #(quote #(list #(list))) asConsTree env: (#val cons: (#quote cons: empty)) cons out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: Cons empty
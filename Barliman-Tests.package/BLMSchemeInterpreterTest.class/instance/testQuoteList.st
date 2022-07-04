tests-quote
testQuoteList
	| states |
	states := (BLMSchemeInterpreter new eval: #(#quote ()) asConsR out: x) runner runAll.
	self assert: states size equals: 1.
	self assert: states first => x equals: Cons empty
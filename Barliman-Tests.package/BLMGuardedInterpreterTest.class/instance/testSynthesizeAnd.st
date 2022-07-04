tests - synthesis
testSynthesizeAnd
	self assert: (interpreter synthesize: #((true true true) (true false false) (false true false) (false false false))) equals: #(#if #_1 #_2 (#quote false)) asConsR.
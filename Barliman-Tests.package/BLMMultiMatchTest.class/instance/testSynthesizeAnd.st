tests - synthesis
testSynthesizeAnd
	"(interpreter synthesize: #((true true true) (true false false) (false true false) (false false false)) hint: #(if _1 _2 (quote false))) inspect."
	self assert: (interpreter synthesize: #((true true true) (true false false) (false true false) (false false false)) hint: #(#if #_1 #_2 (#quote false))) equals: #(#if #_1 #_2 (#quote false)) asConsTree.
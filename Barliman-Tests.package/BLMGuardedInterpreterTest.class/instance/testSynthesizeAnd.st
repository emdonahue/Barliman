tests - synthesis
testSynthesizeAnd
	"(interpreter synthesize: #((true true true) (true false false) (false true false) (false false false)) hint: #(if _1 _2 (quote false))) inspect."
	(interpreter synthesize: #((true true true) (true false false) (false true false) (false false false))) inspect.
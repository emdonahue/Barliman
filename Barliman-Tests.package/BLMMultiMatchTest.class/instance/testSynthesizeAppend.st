tests - synthesis
testSynthesizeAppend
	"super testSynthesizeAppend."
	self assert: (interpreter synthesize: #( (() () ()) (() (1) (1)) ((1) (2) (1 2)) ((1) (2 3) (1 2 3))) hint: {#if. SKVar new. SKVar new. #(cons (car _1) _2)} constants: #(1 2)) equals: #(if (null _1) _2 (cons (car _1) _2)) asConsTree.
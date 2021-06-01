tests - synthesis
testSynthesizeCons
	"self assert: (interpreter synthesize: #(((quote 1) (quote 2) (1 . 2)) ((quote 1) (list (quote 2)) (1 2)))) equals: #cons."
	self assert: (interpreter synthesize: #((1 2 (1 . 2)) (1 (2) (1 2))) hint: {SKVar new.  #'.'. SKVar new} constants: #(1)) equals: #cons.
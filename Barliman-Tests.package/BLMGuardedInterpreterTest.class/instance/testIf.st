tests - ground
testIf
	"self assert: (interpreter eval: #(if true (quote 1) (quote 2))) equals: 1.
	self assert: (interpreter eval: #(if false (quote 1) (quote 2))) equals: 2."
	self assert: (interpreter eval: #(if (null (list)) (quote 1) (quote 2))) equals: 1.
	self assert: (interpreter eval: #(if (null (list (quote 1))) (quote 1) (quote 2))) equals: 2.
	self assert: (interpreter eval: #(if (null (quote 1)) (quote 1) (quote 2))) equals: 2.
tests - ground
testIf
	"self assert: (interpreter eval: #(if true (quote 1) (quote 2))) equals: 1.
	self assert: (interpreter eval: #(if false (quote 1) (quote 2))) equals: 2."
	self assert: (interpreter eval: #(if (null x) (quote 1) (quote 2)) env: #((x . ()))) equals: 1.
	self assert: (interpreter eval: #(if (null x) (quote 1) (quote 2)) env: #((x . (1)))) equals: 2.
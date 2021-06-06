tests - ground
testNull
	self assert: (interpreter eval: #(null x) env: #((x . ()))) equals: true.
	self assert: (interpreter eval: #(null x) env: #((x . (1)))) equals: false.
	"self assert: (interpreter eval: #(null x) env: #((x . 1))) equals: false."
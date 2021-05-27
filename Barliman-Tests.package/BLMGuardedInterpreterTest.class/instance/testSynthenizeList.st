tests - synthesis
testSynthenizeList
	self assert: (interpreter synthesize: #((()) ((quote 1) (1)) ((quote 1) (quote 1) (1 1)))) equals: #list.
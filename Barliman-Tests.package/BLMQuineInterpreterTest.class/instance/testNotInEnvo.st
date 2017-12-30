tests
testNotInEnvo
	self assert: (interpreter not: #x inEnvo: Cons empty) isSuccess.
	self assert: (interpreter not: #x inEnvo: x1y2) isFailure.
	self assert: (interpreter not: #y inEnvo: x1y2) isFailure.
	self assert: (interpreter not: #z inEnvo: x1y2) isSuccess.
	self assert: (interpreter not: 1 inEnvo: x1y2) isSuccess.
	self assert: (interpreter not: 2 inEnvo: x1y2) isSuccess.
	self assert: ((interpreter not: x inEnvo: x1y2) & (x === #x)) step isEmptyStream.
	self assert: ((interpreter not: x inEnvo: x1y2) & (x === #z)) step isState
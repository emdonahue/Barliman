tests-synthesis
testAppend
	| append test1 value1 test2 value2 test3 value3 partialAppend runner x |
	self skip.
	append := #define
		cons: #append
		cons:
			(#lambda
				cons: (#a cons: #b cons)
				cons:
					(#if cons: ('null?' asSymbol cons: #a cons) cons: #b cons: (#cons cons: (#car cons: #a cons) cons: (#append cons: (#cdr cons: #a cons) cons: #b cons) cons) cons)
						cons) cons.
	x := SKVar new.
	partialAppend := #define
		cons: #append
		cons:
			(#lambda
				cons: (#a cons: #b cons)
				cons:
					(#if cons: ('null?' asSymbol cons: #a cons) cons: x cons: (#cons cons: (#car cons: #a cons) cons: (#append cons: (#cdr cons: #a cons) cons: #b cons) cons) cons)
						cons) cons.
	test1 := #(append #(quote #()) #(quote #())) asConsTree.
	value1 := Cons empty.
	test2 := #append cons: (#list cons: 1 cons) cons: (#list cons: 2 cons) cons.
	value2 := 1 cons: 2 cons.
	test3 := #append cons: (#list cons: 1 cons: 2 cons) cons: (#list cons: 3 cons: 4 cons) cons.
	value3 := 1 cons: 2 cons: 3 cons: 4 cons.
	runner := (BLMSynthesizer new
		synthesizeFromDefinitions: partialAppend cons
		tests: (test1 cons: test2 cons: test3 cons)
		values: (value1 cons: value2 cons: value3 cons)) next.
	self deny: runner atEnd.
	self assert: runner => partialAppend equals: append
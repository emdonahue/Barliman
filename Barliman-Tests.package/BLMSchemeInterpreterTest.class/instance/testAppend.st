tests-functions
testAppend
	| append |
	append := #lambda
		cons: (#a cons: #b cons)
		cons:
			(#if cons: ('null?' asSymbol cons: #a cons) cons: #b cons: (#cons cons: (#car cons: #a cons) cons: (#append cons: (#cdr cons: #a cons) cons: #b cons) cons) cons)
				cons.
	self assert: (self define: #append as: append andApplyTo: (Cons empty cons: Cons empty cons)) equals: Cons empty.
	self assert: (self define: #append as: append andApplyTo: (Cons empty cons: 42 cons cons)) equals: 42 cons.
	self assert: (self define: #append as: append andApplyTo: (Cons empty cons: (42 cons: 51 cons) cons)) equals: (42 cons: 51 cons).
	self assert: (self define: #append as: append andApplyTo: (42 cons cons: 51 cons cons)) equals: (42 cons: 51 cons).
	self assert: (self define: #append as: append andApplyTo: ((42 cons: 51 cons) cons: Cons empty cons)) equals: (42 cons: 51 cons).
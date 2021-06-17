tests
testQuine
	| quine |
	quine := #(#apply (#lambda (x) (#list (#quote #apply) x (#list (#quote #quote) x))) (#quote (#lambda (x) (#list (#quote #apply) x (#list (#quote #quote) x))))) asConsTree.
	self assert: [ :q | interpreter eval: quine o: quine ] asGoal succeeds.
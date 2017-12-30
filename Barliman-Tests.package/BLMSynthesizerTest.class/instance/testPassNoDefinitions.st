tests
testPassNoDefinitions
	self
		deny:
			(BLMSynthesizer new synthesizeFromDefinitions: (#define cons: #fourtyTwo cons: (#lambda cons: Cons empty cons: 42 cons) cons) cons tests: 42 cons values: 42 cons gensyms: Cons empty)
				next atEnd
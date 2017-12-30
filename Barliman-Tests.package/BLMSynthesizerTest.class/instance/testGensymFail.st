tests
testGensymFail
	self
		assert:
			(BLMSynthesizer new
				synthesizeFromDefinitions: (#define cons: #fourtyTwo cons: (#lambda cons: Cons empty cons: 42 cons) cons) cons
				tests: #fourtyTwo cons cons
				values: 42 cons
				gensyms: 42 cons) next atEnd
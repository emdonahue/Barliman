tests
testFailNoSynth
	self
		assert:
			(BLMSynthesizer new
				synthesizeFromDefinitions: (#define cons: #fourtyTwo cons: (#lambda cons: Cons empty cons: 42 cons) cons) cons
				tests: #fourtyTwo cons cons
				values: 51 cons
				gensyms: Cons empty) next atEnd
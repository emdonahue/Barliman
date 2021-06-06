running
setUp 	
	super setUp.
	interpreter := BLMGuardedQuines new.
	x := SKVar tag: #x.
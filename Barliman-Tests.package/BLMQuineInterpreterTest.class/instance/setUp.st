initialization
setUp
	SKPackage signContracts.
	SKState signContracts.
	x := SKVar new.
	y := SKVar new.
	interpreter := BLMQuineInterpreter new.
	x1y2 := (#x cons: 1) cons: (#y cons: 2) cons
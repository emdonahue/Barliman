quote
quote: anExpr env: anEnv out: aVal
	^ {(anExpr === (#quote cons: aVal cons)).
	(aVal absento: BLMClosure tag).
	(aVal absento: BLMPrimitive tag).
	(self not: #quote inEnvo: anEnv)} asGoal 
initialization
primBinding: aSymbol
	^ (#val cons: aSymbol cons: (BLMPrimitive tag cons: aSymbol))
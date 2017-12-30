as yet unclassified
synthesizeFromDefinitions: theDefs tests: theTests values: theValues
	| interpreter |
	interpreter := BLMSchemeInterpreter new.
	^ (interpreter eval: (#begin cons: theDefs , (#list cons: theTests) cons) out: theValues) runner
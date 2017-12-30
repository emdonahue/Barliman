as yet unclassified
synthesizeFromDefinitions: theDefs tests: theTests values: theValues gensyms: theGensyms
	| interpreter gensyms |
	interpreter := BLMSchemeInterpreter new.
	gensyms := theGensyms inject: #() into: [ :conds :gensym | conds copyWith: (theDefs absento: gensym) ].
	^ (gensyms copyWith: (interpreter eval: (#begin cons: theDefs , (#list cons: theTests) cons) out: theValues)) asGoal runner
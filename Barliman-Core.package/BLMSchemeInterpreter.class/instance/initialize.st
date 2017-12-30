initialization
initialize
	super initialize.
	initialEnvironment := {(self primBinding: #cons).
	(self primBinding: #car).
	(self primBinding: #cdr).
	(self primBinding: 'null?' asSymbol)} asConsTree	
		"(#val cons: #list cons: (BLMClosure tag cons: (#lambda cons: #x cons: #x cons) cons: Cons empty cons))."
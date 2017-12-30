parameters
not: primSym inRecEnvo: anEnv bindings: theBindings
	^ {{theBindings isEmptyo.
	(self not: primSym inEnvo: anEnv)}.
	[ :pname :lambda :rest | 
	{ theBindings === ((pname cons: lambda) cons: rest).
	(pname =/= primSym).
	self not: primSym inRecEnvo: anEnv bindings: rest }
	 ]
	} asConde
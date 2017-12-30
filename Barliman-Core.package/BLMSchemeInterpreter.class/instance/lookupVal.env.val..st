lookup
lookupVal: aProgram env: anEnv val: aVal
	|  v rest k |
	v := SKVar new.
	rest := SKVar new.
	k := SKVar new.
	^ anEnv === ((#val cons: (k cons: v)) cons: rest) & (k === aProgram & (v === aVal) | (k =/= aProgram & (self lookup: aProgram env: rest out: aVal)))
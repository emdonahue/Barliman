eval
evalNull: primId args: someArgs val: aVal
	| v |
	v := SKVar new.
	^ primId === 'null?' asSymbol
		&
			(someArgs === (v cons: SKVar new)) &
			(v isEmptyo & (aVal === true) | (v isNotEmptyo & (aVal === false)))
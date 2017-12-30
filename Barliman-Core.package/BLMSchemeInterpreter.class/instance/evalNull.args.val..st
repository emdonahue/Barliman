eval
evalNull: primId args: someArgs val: aVal
	| v |
	v := SKVar new.
	^ primId === 'null?' asSymbol
		&
			(someArgs caro: v) &
			(v isEmptyo & (aVal === true) | (v isNotEmptyo & (aVal === false)))
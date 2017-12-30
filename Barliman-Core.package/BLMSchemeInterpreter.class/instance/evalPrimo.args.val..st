eval
evalPrimo: aPrimId args: someArgs val: aVal
	^ {(self evalCons: aPrimId args: someArgs val: aVal).
	(self evalCar: aPrimId args: someArgs val: aVal).
	(self evalCdr: aPrimId args: someArgs val: aVal).
	self evalNull: aPrimId args: someArgs val: aVal} asConde
eval
eval: anExpr env: anEnv out: aVal
	"evalo"

	^ [ {{(self quote: anExpr env: anEnv out: aVal).
	(self number: anExpr val: aVal).
	{anExpr isSymbolo.
	(self lookup: anExpr env: anEnv out: aVal)}.
	(self list: anExpr env: anEnv out: aVal).
	(self lambda: anExpr env: anEnv out: aVal).
	(self apply: anExpr env: anEnv out: aVal).
	(self applyPrimo: anExpr env: anEnv out: aVal).
	(self begin: anExpr env: anEnv val: aVal).
	(self letrec: anExpr env: anEnv val: aVal).
	(self let: anExpr env: anEnv val: aVal).
	(self primExpr: anExpr env: anEnv out: aVal)}} ] asGoal tag: #eval
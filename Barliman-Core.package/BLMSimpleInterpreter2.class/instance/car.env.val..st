as yet unclassified
car: anExpr env: anEnv val: anOut
	| l |
	l := SKVar new.
	^ anExpr car: #car cdrIn: [ :d | 
		(l cons === d) &
		"(anOut === (l cons: (#(list (quote 42) (quote 43)) asConsTree)))"
		(self eval: l asConsTree env: anEnv val: (anOut cons: SKVar new))
		
	].
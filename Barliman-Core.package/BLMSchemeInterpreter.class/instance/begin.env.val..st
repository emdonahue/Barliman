begin
begin: anExpr env: anEnv val: aVal
	<todo>
	"This could benefit from a car:cdrIn:"
	| body |
	body := SKVar new.
	^ {(anExpr === (#begin cons: body)).
	(self not: #begin inEnvo: anEnv).
	(self
		evalBegin: body
		definitions: Cons empty
		env: anEnv
		val: aVal)} asGoal
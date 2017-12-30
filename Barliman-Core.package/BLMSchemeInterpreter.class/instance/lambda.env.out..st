lambda
lambda: aProgram env: anEnvironment out: anOutput
	"Should be able to just re-use program instead of constructing a new lambda term"

	<todo>
	| xs body |
	xs := SKVar new.
	body := SKVar new.
	^ {(aProgram === (#lambda cons: xs cons: body cons)).
	(anOutput === (BLMClosure tag cons: (#lambda cons: xs cons: body cons) cons: anEnvironment cons)).
	(self areParameters: xs).
	(self not: #lambda inEnvo: anEnvironment)} asGoal
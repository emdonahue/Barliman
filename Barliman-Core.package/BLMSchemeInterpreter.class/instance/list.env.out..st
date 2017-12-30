list
list: aProgram env: anEnvironment out: anOutput
	| cdr |
	cdr := SKVar new.
	^ {(aProgram === (#list cons: cdr)).
	(self not: #list inEnvo: anEnvironment).
	(cdr absento: BLMClosure tag).
	(self properList: cdr env: anEnvironment out: anOutput)} asGoal
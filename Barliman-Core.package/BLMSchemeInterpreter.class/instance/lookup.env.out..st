lookup
lookup: aProgram env: anEnvironment out: anOutput
	^ [ {(self lookupVal: aProgram env: anEnvironment val: anOutput).
	(self lookupRec: aProgram env: anEnvironment val: anOutput)} asConde ] asGoal
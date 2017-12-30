list
properList: aProgram env: anEnvironment out: anOutput
	^ aProgram isEmptyo & anOutput isEmptyo
		| [ :a :d :va :vd | 
			{(aProgram === (a cons: d)).
			(anOutput === (va cons: vd)).
			(self eval: a env: anEnvironment out: va).
			(self properList: d env: anEnvironment out: vd)} ]
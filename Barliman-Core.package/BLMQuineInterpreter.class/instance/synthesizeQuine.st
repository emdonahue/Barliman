ui
synthesizeQuine
	^ [ :quine | self eval: quine val: quine ] asGoal run first first.
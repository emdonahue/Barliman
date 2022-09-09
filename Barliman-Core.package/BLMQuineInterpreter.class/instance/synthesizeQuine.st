ui
synthesizeQuine
	^ [ :quine | self eval: quine val: quine ] asGoal runList first first.
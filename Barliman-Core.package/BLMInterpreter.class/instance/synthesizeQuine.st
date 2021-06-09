ui
synthesizeQuine
	^ [ :quine | self eval: quine o: quine ] asGoal asAnswer.
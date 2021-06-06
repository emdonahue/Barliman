ui
synthesizeQuines
	^ [ :quine | self eval: quine o: quine ] asGoal asSpace.
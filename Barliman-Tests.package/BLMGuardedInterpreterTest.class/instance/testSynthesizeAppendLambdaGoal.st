tests - lambdasynthesis
testSynthesizeAppendLambdaGoal
	self skip.
	"(interpreter synthesizeLambdaGoal: #( ((quote ()) (quote ()) ()) ((quote ()) (quote (1)) (1)) ((quote (1)) (quote (2)) (1 2)) ((quote (1)) (quote (2 3)) (1 2 3))) hint: {#lambda. #(h t). {#if. #(null h). SKVar new. #(cons (car h) t)}} constants: #(1 2)) inspect."
	(interpreter synthesizeLambdaGoal: #( ((quote ()) (quote ()) ()) ((quote ()) (quote (1)) (1)) ((quote (1)) (quote (2)) (1 2)) ((quote (1)) (quote (2 3)) (1 2 3))) hint: {#lambda. #(h t). {#if. #(null h). SKVar new. SKVar new}} constants: #(1 2)) inspect.
	"self assert: (interpreter synthesizeLambda: #( ((quote ()) (quote ()) ()) ((quote ()) (quote (1)) (1)) ((quote (1)) (quote (2)) (1 2)) ((quote (1)) (quote (2 3)) (1 2 3))) hint: {#lambda. #(h t). {#if. #(null h). SKVar new. #(cons (car h) t)}} constants: #(1 2)) equals: #(lambda (h t) (if (null h) t (cons (car h) t))) asConsTree."
as yet unclassified
apply: anExpr env: anEnv val: aVal
	^ ABBench a: [ self tabledApply: anExpr env: anEnv val: aVal ] b: [ self untabledApply: anExpr env: anEnv val: aVal ]
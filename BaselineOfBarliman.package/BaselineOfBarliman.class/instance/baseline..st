accessing
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec 
				baseline: 'Contracts' with: [ spec repository: 'github://emdonahue/Contracts' ];
				baseline: 'SmallKanren' with: [ spec repository: 'github://emdonahue/SmallKanren' ];
				package: 'Barliman-Core' with: [ spec requires: #('SmallKanren') ];
				package: 'Barliman-Tests' with: [ spec requires: #('Barliman-Core' 'SmallKanren' 'Contracts') ] ]
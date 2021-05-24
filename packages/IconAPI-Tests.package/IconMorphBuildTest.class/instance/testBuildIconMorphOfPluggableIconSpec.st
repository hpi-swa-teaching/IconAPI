accessing
testBuildIconMorphOfPluggableIconSpec
	
	| iconSpec iconMorph |
	
	iconSpec := self builder pluggableIconSpec new
		model: self model;
		iconColor: Color green;
		iconID: 'rocket';
		iconSize: 150@150;
		yourself.
		
	iconMorph := self builder buildPluggableIconMorph: iconSpec.
	self assert: iconMorph iconSize equals: 150@150.
	self assert: iconMorph iconColor equals: Color green.
	self assert: iconMorph iconID equals: 'rocket'.
	
	
	
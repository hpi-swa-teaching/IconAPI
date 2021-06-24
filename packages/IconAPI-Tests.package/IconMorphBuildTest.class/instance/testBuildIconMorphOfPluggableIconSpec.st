testing
testBuildIconMorphOfPluggableIconSpec
	
	|iconSpec iconMorph|
	
	iconSpec := self builder pluggableIconSpec new
		model: self model;
		id: 'default';
		iconColor: Color green;
		aspectRatio: 1@1;
		yourself.
		
	iconMorph := self builder buildPluggableIconMorph: iconSpec.
	self 
		assert: iconMorph aspectRatio equals: 1@1;
		assert: iconMorph iconColor equals: Color green
	
	
	
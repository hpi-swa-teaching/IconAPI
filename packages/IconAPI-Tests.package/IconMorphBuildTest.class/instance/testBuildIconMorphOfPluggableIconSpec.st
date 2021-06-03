accessing
testBuildIconMorphOfPluggableIconSpec
	
	| iconSpec iconMorph |
	
	iconSpec := self builder pluggableIconSpec new
		model: self model;
		color: Color green;
		id: 'favorite';
		aspectRatio: 1@1;
		yourself.
		
	iconMorph := self builder buildPluggableIconMorph: iconSpec.
	self 
		assert: iconMorph aspectRatio equals: 1@1;
		assert: iconMorph id equals: 'favorite'
	
	
	
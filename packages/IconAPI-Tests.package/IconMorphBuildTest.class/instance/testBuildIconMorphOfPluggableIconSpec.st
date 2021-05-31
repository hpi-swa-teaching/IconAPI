accessing
testBuildIconMorphOfPluggableIconSpec
	
	| iconSpec iconMorph |
	
	iconSpec := self builder pluggableIconSpec new
		model: self model;
		iconColor: Color green;
		iconID: 'favorite';
		setAspectRatio: 1@1;
		yourself.
		
	iconMorph := self builder buildPluggableIconMorph: iconSpec.
	self assert: iconMorph aspectRatio equals: 1@1.
	self assert: iconMorph id equals: 'favorite'.
	
	
	
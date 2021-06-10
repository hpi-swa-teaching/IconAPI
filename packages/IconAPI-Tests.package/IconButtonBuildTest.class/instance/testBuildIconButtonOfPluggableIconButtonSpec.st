as yet unclassified
testBuildIconButtonOfPluggableIconButtonSpec
	
	| iconButtonSpec iconMorph iconButton |
	
	iconButtonSpec := self builder pluggableIconButtonSpec new
		model: self model;
		iconColor: Color green;
		id: 'default';
		aspectRatio: 1@1;
		target: self;
		yourself.
		
	iconButton := self builder buildPluggableIconButton: iconButtonSpec.
	iconMorph := iconButton iconMorph.
	self 
		assert: iconMorph aspectRatio equals: 1@1;
		assert: iconMorph id equals: 'default';
		assert: iconMorph iconColor equals: Color green.
	
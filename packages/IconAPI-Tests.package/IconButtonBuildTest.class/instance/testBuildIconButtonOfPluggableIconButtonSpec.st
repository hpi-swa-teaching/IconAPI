testing
testBuildIconButtonOfPluggableIconButtonSpec
	
	|iconButtonSpec iconMorph iconButton widget|
	
	iconButtonSpec := self builder pluggableIconButtonSpec new
		model: self model;
		iconColor: Color green;
		id: 'default';
		aspectRatio: 1 @ 1;
		target: self;
		yourself.
		
	iconButton := self builder buildPluggableIconButton: iconButtonSpec.
	iconMorph := iconButton iconMorph.
	self 
		assert: iconMorph aspectRatio equals: 1 @ 1;
		assert: iconMorph iconColor equals: Color green.
		
	widget := iconButtonSpec buildWith: ToolBuilder default.
	self 
		assert: widget class == IconButton;
		assert: widget iconMorph aspectRatio equals: 1 @ 1;
		assert: widget iconMorph iconColor equals: Color green
	

testing
testPluggableIconSpec
	
	|iconSpec|
	
	iconSpec := self builder pluggableIconSpec new
		model: self model;
		iconColor: Color green;
		id: 'default';
		aspectRatio: 1 @ 1;
		yourself.
		
	self 
		assert: iconSpec aspectRatio equals: 1 @ 1;
		assert: iconSpec iconColor equals: Color green;
		assert: iconSpec id equals: 'default'
	
	
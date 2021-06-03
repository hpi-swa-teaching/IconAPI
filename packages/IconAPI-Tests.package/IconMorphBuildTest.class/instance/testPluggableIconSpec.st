accessing
testPluggableIconSpec
	
	| iconSpec |
	
	iconSpec := self builder pluggableIconSpec new
		model: self model;
		color: Color green;
		id: 'favorite';
		aspectRatio: 1@1;
		yourself.
	self 
		assert: iconSpec aspectRatio equals: 1@1;
		assert: iconSpec color equals: Color green;
		assert: iconSpec id equals: 'favorite'
	
	
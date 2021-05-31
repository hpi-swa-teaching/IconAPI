accessing
testPluggableIconSpec
	
	| iconSpec |
	
	iconSpec := self builder pluggableIconSpec new
		model: self model;
		iconColor: Color green;
		iconID: 'favorite';
		aspectRatio: 1@1;
		yourself.
	self assert: iconSpec aspectRatio equals: 1@1.
	self assert: iconSpec iconColor equals: Color green.
	self assert: iconSpec id equals: 'favorite'.
	
	
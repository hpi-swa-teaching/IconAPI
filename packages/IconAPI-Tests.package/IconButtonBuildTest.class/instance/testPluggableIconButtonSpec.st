as yet unclassified
testPluggableIconButtonSpec
	
	| iconButtonSpec |
	
	iconButtonSpec := self builder pluggableIconButtonSpec new
		model: self model;
		iconColor: Color green;
		id: 'default';
		aspectRatio: 1@1;
		yourself.
	self 
		assert: iconButtonSpec aspectRatio equals: 1@1;
		assert: iconButtonSpec iconColor equals: Color green;
		assert: iconButtonSpec id equals: 'default'
	
accessing
testPluggableIconSpec
	
	| iconSpec |
	
	iconSpec := self builder pluggableIconSpec new
		model: self model;
		iconColor: Color green;
		iconID: 'rocket';
		iconSize: 150@150;
		yourself.
	self assert: iconSpec iconSize equals: 150@150.
	self assert: iconSpec iconColor equals: Color green.
	self assert: iconSpec iconID equals: 'rocket'.
	
	
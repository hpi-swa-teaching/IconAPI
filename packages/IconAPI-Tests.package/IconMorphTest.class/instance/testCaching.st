testing
testCaching
	
	|directory|
	
	directory := FileDirectory uri: 'Icons'.
	(directory directoryExists: 'MaterialIconsOutlined') ifTrue: [(directory directoryNamed: 'MaterialIconsOutlined') recursiveDelete].	
	
	self icon setIcon: 'favorite_border'.
	self assert: (directory directoryExists: 'MaterialIconsOutlined').
	directory := directory directoryNamed: 'MaterialIconsOutlined'.
	self assert: (directory fileExists: 'favorite_border','.png')
	

	
	
	
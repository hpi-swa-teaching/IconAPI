testing
testCaching
	
	|directory|
	
	directory := FileDirectory uri: 'Icons'.	
	
	self icon setIcon: 'favorite_border'.
	self assert: (directory directoryExists: 'MaterialIconsOutlined').
	directory := directory directoryNamed: 'MaterialIconsOutlined'.
	self assert: (directory fileExists: 'favorite_border','.png')
	

	
	
	
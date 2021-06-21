layouting
testCaching
	
	|directory icon|
	
	directory := FileDirectory uri: 'Icons'.
	(directory directoryExists: 'MaterialIcons') ifTrue: [(directory directoryNamed: 'MaterialIcons') recursiveDelete].
	
	icon := IconMorph new.
	self assert: (directory directoryExists: 'MaterialIcons').
	
	icon setIcon: 'favorite_border'.
	directory := directory directoryNamed: 'materialicons'.
	self assert: (directory fileExists: 'favorite_border','.png')
	

	
	
	
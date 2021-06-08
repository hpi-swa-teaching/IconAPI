layouting
testCaching
	
	|directory|
	
	directory := FileDirectory uri: 'Icons'.
	(directory directoryExists: 'materialicons') ifTrue: [(directory directoryNamed: 'materialicons') recursiveDelete].
	
	icon fetch: 'favorite_border' fromLibrary: 'materialicons'.
	self assert: (directory directoryExists: 'materialicons').
	
	directory := directory directoryNamed: 'materialicons'.
	self assert: (directory fileExists: 'favorite_border','.png')
	

	
	
	
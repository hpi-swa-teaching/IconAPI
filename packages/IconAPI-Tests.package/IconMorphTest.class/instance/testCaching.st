layouting
testCaching
	
	|directory icon|
	
	directory := FileDirectory uri: 'Icons'.
	(directory directoryExists: 'MaterialIcons') ifTrue: [(directory directoryNamed: 'MaterialIcons') recursiveDelete].
	
	icon := IconMorph newWith: MaterialIconsFetcher new.
	self assert: (directory directoryExists: 'MaterialIcons').
	
	icon setIcon: 'favorite_border'.
	directory := directory directoryNamed: 'MaterialIcons'.
	self assert: (directory fileExists: 'favorite_border','.png')
	

	
	
	
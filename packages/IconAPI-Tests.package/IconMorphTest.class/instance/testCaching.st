testing
testCaching
	
	|directory icon|
	
	directory := FileDirectory uri: 'Icons'.
	(directory directoryExists: 'MaterialIconsOutlined') ifTrue: [(directory directoryNamed: 'MaterialIconsOutlined') recursiveDelete].
	
	icon := IconMorph newWith: MaterialIconsFetcher new.
	
	self assert: (directory directoryExists: 'MaterialIconsOutlined').
	
	icon setIcon: 'favorite_border'.
	directory := directory directoryNamed: 'MaterialIconsOutlined'.
	self assert: (directory fileExists: 'favorite_border','.png')
	

	
	
	
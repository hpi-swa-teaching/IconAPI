as yet unclassified
deleteDirectories

	|directory|

	directory := FileDirectory uri: 'Icons'.
	(directory directoryExists: 'MaterialIconsOutlined') ifTrue: [(directory directoryNamed: 'MaterialIconsOutlined') recursiveDelete].
	(directory directoryExists: 'IconIcons') ifTrue: [(directory directoryNamed: 'IconIcons') recursiveDelete].
	(directory directoryExists: 'MaterialIcons') ifTrue: [(directory directoryNamed: 'MaterialIcons') recursiveDelete]
	
	

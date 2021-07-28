testing
testCaching
	
	|directory|
	
	self icon fetcher: MaterialIconsFetcher new.
	self icon fetcher useOutlined: true.
	directory := FileDirectory uri: 'Icons'.
	self icon id: 'favorite_border'.
	self assert: (directory directoryExists: 'MaterialIconsOutlined').
	directory := directory directoryNamed: 'MaterialIconsOutlined'.
	self assert: (directory fileExists: 'favorite_border.png')
	

	
	
	

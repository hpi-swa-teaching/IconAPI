testing
testCaching
	
	|testID directory|
	
	testID := 'favorite_border'.
	self icon fetcher: MaterialIconsFetcher new.
	self icon fetcher useOutlined: true.
	directory := FileDirectory uri: 'Icons'.
	
	self icon id: testID.
	self assert: (directory directoryExists: 'MaterialIconsOutlined').
	
	directory := directory directoryNamed: 'MaterialIconsOutlined'.
	self assert: (directory fileExists: testID, '.png')
	

	
	
	

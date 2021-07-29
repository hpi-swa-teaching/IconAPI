testing
testLocalAndMaterialIconsFetcher

	|testID materialIconsFetcher localFetcher form compareForm|
	
	testID := 'favorite_border'.
	materialIconsFetcher := MaterialIconsFetcher new.
	materialIconsFetcher useOutlined: false.
	compareForm := materialIconsFetcher getIconFormWith: testID.
	localFetcher := LocalFetcher newAt: (FileDirectory uri: 'Icons') / 'MaterialIcons'.
	form := localFetcher getIconFormWith: testID.
	
	self assert: form bits equals: compareForm bits
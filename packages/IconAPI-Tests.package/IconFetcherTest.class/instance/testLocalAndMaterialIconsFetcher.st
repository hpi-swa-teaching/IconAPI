testing
testLocalAndMaterialIconsFetcher

	|materialIconsFetcher localFetcher form compareForm|
	
	materialIconsFetcher := MaterialIconsFetcher new.
	materialIconsFetcher useOutlined: false.
	compareForm := materialIconsFetcher getIconFormWith: 'favorite_border'.
	localFetcher := LocalFetcher newAt: (FileDirectory uri: 'Icons') / 'MaterialIcons'.
	form := localFetcher getIconFormWith: 'favorite_border'.
	
	self assert: form bits = compareForm bits
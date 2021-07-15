as yet unclassified
testLocalAndMaterialIconsFetcher

	|materialIconsFetcher localFetcher form compareForm|
	
	materialIconsFetcher := MaterialIconsFetcher new.
	materialIconsFetcher useOutlined: false.
	compareForm := materialIconsFetcher getIconForm: 'favorite_border'.
	localFetcher := LocalFetcher newAt: (FileDirectory uri: 'icons') / 'MaterialIcons'.
	form := localFetcher getIconForm: 'favorite_border'.
	
	self assert: (form bits) = (compareForm bits)
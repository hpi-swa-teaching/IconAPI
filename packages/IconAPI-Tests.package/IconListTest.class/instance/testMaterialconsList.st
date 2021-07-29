testing
testMaterialconsList

	|iconList|

	iconList := MaterialIconsFetcher new getIconList.
	
	self assert: (iconList includes: 'favorite_border')
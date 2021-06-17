accessing
testFetchIconById
	
	|compareForm|
	icon fetchFromMaterialIcons: 'favorite_border'.
	icon setIcon: 'favorite_border' from: 'Icons/MaterialIcons'.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: (IconMorphFetchingTest testImageBase64 readStream)).
	
	self assert: (icon originalForm bits) = (compareForm bits)

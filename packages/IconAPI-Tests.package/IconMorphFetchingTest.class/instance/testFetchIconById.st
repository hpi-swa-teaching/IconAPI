accessing
testFetchIconById
	
	|compareForm|
	icon fetchFromMaterialIcons: 'favorite_border'.
	icon setIcon: 'favorite_border' from: 'Icons/MaterialIcons'.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: (IconMorph default2 readStream)).
	
	self assert: (icon originalForm bits) = (compareForm bits)

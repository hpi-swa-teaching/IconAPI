color setting
testFetchIconById
	
	|compareForm|
	
	icon fetcher useOutlined: false.
	icon setIcon: 'favorite_border'.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: IconMorphTest testImageBase64 readStream).
	
	self assert: icon originalForm bits = compareForm bits

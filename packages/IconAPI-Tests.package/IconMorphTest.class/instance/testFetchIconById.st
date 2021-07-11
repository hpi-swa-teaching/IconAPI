color setting
testFetchIconById
	
	|compareForm|
	
	icon fetcher useOutlined: true.
	icon id: 'thumb_up'.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: IconMorphTest testImageBase64 readStream).
	
	self assert: icon originalForm bits = compareForm bits

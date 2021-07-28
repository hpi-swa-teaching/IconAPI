testing
testFetchIconById
	
	|compareForm|
	
	self icon fetcher: MaterialIconsFetcher new.
	self icon fetcher useOutlined: true.
	self icon id: 'thumb_up'.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: IconMorphTest testImageBase64 readStream).
	
	self assert: icon originalForm bits = compareForm bits

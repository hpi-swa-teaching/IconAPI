testing
testFetchIconById
	
	|testID compareForm|
	
	testID := 'thumb_up'.
	self icon fetcher: MaterialIconsFetcher new.
	self icon fetcher useOutlined: true.
	self icon id: testID.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self class testImageBase64 readStream).
	
	self assert: icon originalForm bits equals: compareForm bits

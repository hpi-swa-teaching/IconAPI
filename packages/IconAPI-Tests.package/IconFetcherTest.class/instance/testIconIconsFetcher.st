testing
testIconIconsFetcher

	|testID fetcher form compareForm|
	
	testID := '156938'.
	fetcher := IconIconsFetcher new.
	form := fetcher getIconFormWith: testID.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self class testImageBase64_iconicons readStream).
	
	self assert: form bits equals: compareForm bits
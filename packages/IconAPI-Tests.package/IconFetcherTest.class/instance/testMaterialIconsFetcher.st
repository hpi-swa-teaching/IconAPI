testing
testMaterialIconsFetcher

	|testID fetcher form compareForm|
	
	testID := 'thumb_up'.
	fetcher := MaterialIconsFetcher new.
	fetcher useOutlined: false.
	form := fetcher getIconFormWith: testID.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self class testImageBase64_materialicons readStream).
	
	self assert: form bits equals: compareForm bits
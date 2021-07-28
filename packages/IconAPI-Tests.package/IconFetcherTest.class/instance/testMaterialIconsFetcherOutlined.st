testing
testMaterialIconsFetcherOutlined

	|fetcher form compareForm|
	
	fetcher := MaterialIconsFetcher new.
	form := fetcher getIconFormWith: 'thumb_up'.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: IconFetcherTest testImageBase64_materialiconsOutlined readStream).
	
	self assert: form bits = compareForm bits
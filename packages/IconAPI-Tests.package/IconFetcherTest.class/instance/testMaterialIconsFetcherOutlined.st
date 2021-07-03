as yet unclassified
testMaterialIconsFetcherOutlined

	|fetcher form compareForm|
	
	fetcher := MaterialIconsFetcher new.
	form := fetcher getIconForm: 'thumb_up'.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: IconFetcherTest testImageBase64_materialiconsOutlined readStream).
	
	self assert: form bits = compareForm bits
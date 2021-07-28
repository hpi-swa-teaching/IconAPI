testing
testMaterialIconsFetcher

	|fetcher form compareForm|
	
	fetcher := MaterialIconsFetcher new.
	fetcher useOutlined: false.
	form := fetcher getIconFormWith: 'thumb_up'.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: IconFetcherTest testImageBase64_materialicons readStream).
	
	self assert: form bits = compareForm bits
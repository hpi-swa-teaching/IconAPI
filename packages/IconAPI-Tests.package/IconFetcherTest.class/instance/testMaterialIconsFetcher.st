as yet unclassified
testMaterialIconsFetcher

	|fetcher form compareForm|
	
	fetcher := MaterialIconsFetcher new.
	fetcher useOutlined: false.
	fetcher maxVersion: 5.
	form := fetcher getIconForm: 'favorite_border'.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: IconFetcherTest testImageBase64_materialicons readStream).
	fetcher maxVersion: 20.
	
	self assert: form bits = compareForm bits
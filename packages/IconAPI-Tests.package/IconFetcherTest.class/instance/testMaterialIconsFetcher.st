as yet unclassified
testMaterialIconsFetcher

	|fetcher form compareForm|
	
	fetcher := MaterialIconsFetcher new.
	fetcher useOutlined: false.
	fetcher maxVersion: 1.
	form := fetcher getIconForm: 'favorite_border'.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: IconFetcherTest testImageBase64_materialicons_v1 readStream).
	
	self assert: form bits = compareForm bits
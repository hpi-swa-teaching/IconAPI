as yet unclassified
testMaterialIconsFetcher

	|fetcher form compareForm|
	
	fetcher := MaterialIconsFetcher new.
	form := fetcher getIconForm: 'favorite_border'.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: IconFetcherTest testImageBase64 readStream).
	
	self assert: form bits = compareForm bits

as yet unclassified
testIconIconsFetcher

	|fetcher form compareForm|
	
	fetcher := IconIconsFetcher new.
	form := fetcher getIconForm: '156938'.
	compareForm := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: IconFetcherTest testImageBase64_iconicons readStream).
	
	self assert: form bits = compareForm bits
as yet unclassified
testIconPreviewList
	
	|previewList|
	
	previewList := IconPreviewList newWith: MaterialIconsFetcher new.
	
	self assert: previewList iconFetcher class == MaterialIconsFetcher
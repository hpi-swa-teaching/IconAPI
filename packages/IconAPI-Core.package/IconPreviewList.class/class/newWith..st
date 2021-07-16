as yet unclassified
newWith: anIconFetchStrategy

	^ IconPreviewList new
		iconFetcher: anIconFetchStrategy;
		yourself
		
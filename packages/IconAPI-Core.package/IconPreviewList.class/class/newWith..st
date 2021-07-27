instance creation
newWith: anIconFetchStrategy

	^ IconPreviewList new
		iconFetcher: anIconFetchStrategy;
		yourself
		
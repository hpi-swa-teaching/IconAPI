instance creation
newWith: anIconFetchStrategy

	^ self new
		fetcher: anIconFetchStrategy;
		yourself
accessing
iconFetcher: anIconFetchStrategy
	
	iconFetcher := anIconFetchStrategy.
	self 
		iconList: anIconFetchStrategy getIconList;
		changed.
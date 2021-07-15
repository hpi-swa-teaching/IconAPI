initialization
initialize

	super initialize.
	super color: Color transparent.
	self 
		fetcher: MaterialIconsFetcher new;
		isIconColorSet: false;
		aspectRatio: 1@1;
		padding: 0;
		id: 'default';
		borderColor: Color transparent

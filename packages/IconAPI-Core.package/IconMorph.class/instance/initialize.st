initialization
initialize

	super initialize.
	super color: Color transparent.
	self 
		fetcher: MaterialIconsFetcher new;
		aspectRatio: 1@1;
		padding: 0;
		setIcon: 'default';
		borderColor: Color transparent

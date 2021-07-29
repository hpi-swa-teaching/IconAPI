initialization
initialize

	super initialize.
	
	self 
		iconIndex: 0;
		iconFetcher: MaterialIconsFetcher new;
		iconList: iconFetcher getIconList
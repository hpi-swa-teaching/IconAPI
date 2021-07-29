running
setUp
	
	|window|
	
	window := ToolBuilder default pluggableWindowSpec new
        	model: Model new;
		label: 'Icon List - MaterialIconsFetcher';
        	children: {};
       	yourself.
	self window: (ToolBuilder default build: window)
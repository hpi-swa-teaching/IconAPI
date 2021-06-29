as yet unclassified
createIconWindow
	
	|window|
	window := (ToolBuilder default) pluggableWindowSpec new
        	model: Model new;
		label: 'Icon List';
        	children: {};
        	yourself.
	
	^ (ToolBuilder default) build: window
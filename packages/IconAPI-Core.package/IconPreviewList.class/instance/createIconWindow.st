building
createIconWindow
	
	|toolBuilder window|
	
	toolBuilder := ToolBuilder default.
	window := toolBuilder pluggableWindowSpec new
        	model: self;
		label: #windowTitle;
        	children: {self buildListSpecWith: toolBuilder. self buildIconSpecWith: toolBuilder};
        	yourself.
	
	^ toolBuilder build: window
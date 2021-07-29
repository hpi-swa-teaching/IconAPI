building
buildWith: aToolBuilder

	|window|

    	window := aToolBuilder pluggableWindowSpec new
		model: self;
		children: {self buildIconSpecWith: aToolBuilder. self buildIconButtonSpecWith: aToolBuilder. self buildNumberSpecWith: aToolBuilder};
		yourself.
    ^ aToolBuilder build: window
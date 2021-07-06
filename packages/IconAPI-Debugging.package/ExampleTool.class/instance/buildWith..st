accessing
buildWith: aBuilder

	|window|

    	window := aBuilder pluggableWindowSpec new
		model: self;
		label: 'ExampleTool';
       	children: {self buildIconSpecWith: aBuilder. self buildIconButtonSpecWith: aBuilder. self buildNumberSpecWith: aBuilder};
        	yourself.

    ^ aBuilder build: window
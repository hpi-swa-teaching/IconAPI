as yet unclassified
buildWith: aBuilder

	|window|

    	window := aBuilder pluggableWindowSpec new
        model: self;
        children: {self buildIconSpecWith: aBuilder. self buildIconButtonSpecWith: aBuilder};
        yourself.

    ^ aBuilder build: window
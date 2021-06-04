as yet unclassified
buildWith: aBuilder

	|window|

    	window := aBuilder pluggableWindowSpec new
        model: self;
        children: {self buildIconSpecWith: aBuilder};
        yourself.

    ^ aBuilder build: window
accessing
buildNumberSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #numberValueString;
		frame: (0@0 corner: 1@0.2);
		yourself
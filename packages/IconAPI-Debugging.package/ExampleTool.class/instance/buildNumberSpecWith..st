accessing
buildNumberSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #numberValueString;
		readOnly: true;
		frame: (0@0 corner: 1.0@0.2) ;
		yourself

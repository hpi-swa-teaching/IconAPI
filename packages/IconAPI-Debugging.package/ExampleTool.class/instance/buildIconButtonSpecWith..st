as yet unclassified
buildIconButtonSpecWith: aBuilder

	^ aBuilder pluggableIconButtonSpec new
		model: self;
		id: 'default';
		frame: (0@0 corner: 0.5@1);
		aspectRatio: 1@1;
		padding: 0;
		target: self;
		action: #actionSetColorBlue;
		yourself

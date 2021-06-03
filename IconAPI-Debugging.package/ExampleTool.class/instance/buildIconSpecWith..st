as yet unclassified
buildIconSpecWith: aBuilder

	^ aBuilder pluggableIconSpec new
		model: self;
		id: 'favorite';
		frame: (0@0 corner: 1@1);
		aspectRatio: 3@1;
		padding: 50;
		yourself

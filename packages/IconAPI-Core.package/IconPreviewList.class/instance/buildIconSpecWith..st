building
buildIconSpecWith: aToolBuilder

	^ aToolBuilder pluggableIconSpec new
		model: self;
		id: 'favorite';
		frame: (0.5 @ 0 corner: 1 @ 1);
		aspectRatio: 1 @ 1;
		yourself
		
		

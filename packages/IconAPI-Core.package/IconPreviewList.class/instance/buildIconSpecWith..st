accessing
buildIconSpecWith: aBuilder

	^ aBuilder pluggableIconSpec new
		model: self;
		id: 'favorite';
		frame: (0.5@0 corner: 1@1);
		aspectRatio: 1@1;
		padding: 0;
		yourself
		
		
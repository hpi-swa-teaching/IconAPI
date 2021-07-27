building
buildIconSpecWith: aBuilder

	^ aBuilder pluggableIconSpec new
		model: self;
		id: 'pin';
		iconColor: Color white;
		frame: (0.5@0.2 corner: 1@1);
		aspectRatio: 1@1;
		yourself

accessing
buildIconButtonSpecWith: aBuilder

	^ aBuilder pluggableIconButtonSpec new
		model: self;
		id: 'add_circle';
		iconColor: Color white;
		frame: (0@0.2 corner: 0.5@1);
		aspectRatio: 1@1;
		target: self;
		action: #incrementNumber;
		yourself

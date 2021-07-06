accessing
buildIconButtonSpecWith: aBuilder

	^ aBuilder pluggableIconButtonSpec new
		model: self;
		id: 'add_circle';
		frame: (0@0.2 corner: 0.5@1);
		aspectRatio: 1@1;
		padding: 0;
		iconColor: Color white;
		target: self;
		action: #incrementNumber;
		yourself

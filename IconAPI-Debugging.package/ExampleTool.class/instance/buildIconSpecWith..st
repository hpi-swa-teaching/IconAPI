as yet unclassified
buildIconSpecWith: aBuilder

	^ aBuilder pluggableIconSpec new
		model: self;
		iconColor: Color green;
		iconID: 'favorite';
		frame: (0@0 corner: 1@1);
		iconSize: 150@50;
		padding: 50;
		yourself
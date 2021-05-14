as yet unclassified
buildIconSpecWith: aBuilder

	^ aBuilder pluggableIconSpec new
		model: self;
		iconColor: Color green;
		iconID: 'rocket';
		frame: (0@0 corner: 1@1);
		yourself
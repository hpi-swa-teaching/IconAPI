as yet unclassified
buildIconSpecWith: aBuilder

	^ aBuilder pluggableIconSpec new
		model: self;
		iconColor: (Color green alpha: 0.5);
		iconID: 'semi';
		iconSize: 150@150;
		iconColorInverted: true;
		yourself
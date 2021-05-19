as yet unclassified
buildIconSpecWith: aBuilder

	^ aBuilder pluggableIconSpec new
		model: self;
		iconColor: Color green;
		iconID: 'favorite';
		iconSize: 150@150;
		yourself
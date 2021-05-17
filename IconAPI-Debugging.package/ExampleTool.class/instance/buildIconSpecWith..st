as yet unclassified
buildIconSpecWith: aBuilder

	^ aBuilder pluggableIconSpec new
		model: self;
		iconColor: Color green;
		iconID: 'favorite';
		iconSize: 100@100;
		yourself
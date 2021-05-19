as yet unclassified
buildIconSpecWith: aBuilder

	^ aBuilder pluggableIconSpec new
		model: self;
		iconColor: Color salmon;
		iconID: 'fingerprint';
		iconSize: 200@200;
		iconColorInverted: true;
		yourself
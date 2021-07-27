building
buildListSpecWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #iconList;
		getIndex: #iconIndex;
		setIndex: #iconIndex:;
		frame: (0.0@0 corner: 0.5@1);
		yourself
		
		

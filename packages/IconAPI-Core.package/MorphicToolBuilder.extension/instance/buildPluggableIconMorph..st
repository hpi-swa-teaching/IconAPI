*IconAPI-Core
buildPluggableIconMorph: aSpec

	|widget|
	
	widget := IconMorph new
		setIcon: aSpec iconID;
		iconSize: aSpec iconSize;
		iconColor: aSpec iconColor;
		yourself.
	self setFrame: aSpec frame in: widget.
	self setLayoutHintsFor: widget spec: aSpec.
	parent ifNotNil: [self add: widget to: parent].
	^ widget
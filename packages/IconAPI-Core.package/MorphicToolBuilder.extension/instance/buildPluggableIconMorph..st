*IconAPI-Core
buildPluggableIconMorph: aSpec

	|widget|
	
	widget := IconMorph new
		setIcon: aSpec iconID;
		setIconSize: aSpec iconSize;
		iconColor: aSpec iconColor;
		yourself.
	
	self setLayoutHintsFor: widget spec: aSpec.
	parent ifNotNil: [
		self add: widget to: parent.
		widget center: parent position + parent extent].
	^ widget
*IconAPI-Core
buildPluggableIconMorph: aSpec

	|widget|
	
	widget := IconMorph new
		setIcon: aSpec iconID;
		setIconSize: aSpec iconSize;
		yourself.
		
	aSpec iconColor ifNotNil: [widget setIconColor: aSpec iconColor].
	aSpec iconColorInverted ifTrue: [widget invertColors].
	widget center: parent position + parent extent.
	self setLayoutHintsFor: widget spec: aSpec.
	parent ifNotNil: [self add: widget to: parent].
	^ widget
	

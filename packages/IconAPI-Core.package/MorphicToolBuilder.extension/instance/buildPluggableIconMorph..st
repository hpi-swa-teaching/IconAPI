*IconAPI-Core
buildPluggableIconMorph: aSpec

	|widget|
	
	widget := IconMorph new
		setIcon: aSpec iconID;
		setAspectRatio: aSpec aspectRatio;
		setPadding: aSpec padding;
		yourself.
	
	aSpec iconColor ifNotNil: [widget setIconColor: aSpec iconColor].
	aSpec iconColorInverted ifTrue: [widget invertColors].
	
	self setFrame: aSpec frame in: widget.
	self setLayoutHintsFor: widget spec: aSpec.
	parent ifNotNil: [
		self add: widget to: parent.].
	widget updateLayout.
	^ widget
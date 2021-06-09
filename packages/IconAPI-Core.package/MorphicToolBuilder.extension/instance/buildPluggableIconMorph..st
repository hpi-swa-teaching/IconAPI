*IconAPI-Core
buildPluggableIconMorph: aSpec

	|widget|
	
	widget := IconMorph new
		setIcon: aSpec id;
		setAspectRatio: aSpec aspectRatio;
		setPadding: aSpec padding;
		iconColor: aSpec iconColor;
		color: aSpec color;
		yourself.
		
	aSpec inverted ifTrue: [widget invert].
	
	self setFrame: aSpec frame in: widget.
	self setLayoutHintsFor: widget spec: aSpec.
	parent ifNotNil: [
		self add: widget to: parent].
	widget updateLayout.

	^ widget

*IconAPI-Core
buildPluggableIconButton: aSpec

	|widget|
	
	widget := IconButton new
		actionSelector: aSpec action;
		target: aSpec target;
		yourself.
		
	widget iconMorph 
		setIcon: aSpec id;
		setAspectRatio: aSpec aspectRatio;
		setPadding: aSpec padding;
		iconColor: aSpec iconColor;
		color: aSpec color;
		yourself.
		
	self setFrame: aSpec frame in: widget.
	self setLayoutHintsFor: widget spec: aSpec.
	parent ifNotNil: [self add: widget to: parent].
	widget updateLayout.

	 ^ widget

*IconAPI-Core
buildPluggableIconButton: aSpec

	|widget iconMorph|
	
	widget := IconButton new
		actionSelector: aSpec action;
		yourself.
	iconMorph := widget iconMorph
		setIcon: aSpec id;
		setAspectRatio: aSpec aspectRatio;
		setPadding: aSpec padding;
		yourself.
		
	aSpec inverted ifTrue: [iconMorph invert].
	
	self setFrame: aSpec frame in: widget.
	self setLayoutHintsFor: widget spec: aSpec.
	parent ifNotNil: [
		self add: widget to: parent].
	widget updateLayout.

	^ widget

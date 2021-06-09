*IconAPI-Core
buildPluggableIconButton: aSpec

	|widget iconMorph|
	
	widget := IconButton new
		actionSelector: aSpec action;
		target: aSpec target;
		yourself.
		
	iconMorph := self buildPluggableIconMorph: aSpec.
	
	self setFrame: aSpec frame in: widget.
	self setLayoutHintsFor: widget spec: aSpec.
	parent ifNotNil: [
		self add: widget to: parent].
	widget updateLayout.

	^ widget

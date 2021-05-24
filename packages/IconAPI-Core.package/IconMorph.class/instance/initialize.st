accessing
initialize

	super initialize.
	self color: Color transparent.
	self borderColor: Color transparent.
	self sketchMorph: SketchMorph new.
	self padding: 0.
	self addMorph: self sketchMorph
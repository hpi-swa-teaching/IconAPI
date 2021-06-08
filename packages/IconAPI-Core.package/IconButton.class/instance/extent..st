as yet unclassified
extent: newExtent
	
		super extent: newExtent.
		(self hasSubmorphs) ifTrue:[self firstSubmorph extent: newExtent]
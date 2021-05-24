accessing
setPadding: aNumber

	aNumber 
		ifNil: [ self padding: 0]
		ifNotNil: [self padding: aNumber].
	self updateLayout.
layouting
testPadding

	|maxHeight maxWidth|
	
	self icon setPadding: 5.
	
	self assert: self icon padding equals: 5.
	
	maxHeight := self icon height - (2 * self icon padding).
	maxWidth := self icon width - (2 * self icon padding).
	
	self assert: [self icon scaledForm width <= maxWidth].
	self assert: [self icon scaledForm height <= maxHeight].
	
	


	
	
	
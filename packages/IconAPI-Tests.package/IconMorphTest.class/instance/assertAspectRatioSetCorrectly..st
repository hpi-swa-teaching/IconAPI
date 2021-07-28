testing
assertAspectRatioSetCorrectly: aPoint

	|aspectRatioAfter aspectRatioBefore|
	aspectRatioBefore := self icon aspectRatio x / self icon aspectRatio y.
	self icon extent: aPoint.
	aspectRatioAfter := self icon scaledForm width / self icon scaledForm height.
	
	self assert: aspectRatioBefore equals: aspectRatioAfter.
	self assert: self icon extent equals: aPoint


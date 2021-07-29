testing
assertAspectRatioSetCorrectly: aPoint

	|aspectRatioBefore aspectRatioAfter|
	
	aspectRatioBefore := self icon aspectRatio x / self icon aspectRatio y.
	self icon extent: aPoint.
	aspectRatioAfter := self icon scaledForm width / self icon scaledForm height.
	
	self 
		assert: aspectRatioBefore equals: aspectRatioAfter;
		assert: self icon extent equals: aPoint


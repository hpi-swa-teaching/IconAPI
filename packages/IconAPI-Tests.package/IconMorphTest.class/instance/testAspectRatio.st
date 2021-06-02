layouting
testAspectRatio

	|aspectRatioBefore aspectRatioAfter|
	
	aspectRatioBefore := self icon aspectRatio x / self icon aspectRatio y.
	
	"test 1"
	self icon extent: 100@200.
	aspectRatioAfter := self icon scaledForm width / self icon scaledForm height.
	
	self assert: aspectRatioBefore equals: aspectRatioAfter.
	self assert: self icon extent equals: 100@200.
	
	"test 2"
	self icon extent: 100@100.
	aspectRatioAfter := self icon scaledForm width / self icon scaledForm height.
	
	self assert: aspectRatioBefore equals: aspectRatioAfter.
	self assert: self icon extent equals: 100@100.
	
	"test 3"
	self icon extent: 200@100.
	aspectRatioAfter := self icon scaledForm width / self icon scaledForm height.
	self assert: aspectRatioBefore equals: aspectRatioAfter.
	self assert: self icon extent equals: 200@100
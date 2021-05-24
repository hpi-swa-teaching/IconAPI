layouting
testAspectRatio

	|aspectRatioBefore aspectRatioAfter|
	
	aspectRatioBefore := (self icon iconSize x) / (self icon iconSize y).
	
	"test 1"
	self icon extent: 100@200.
	aspectRatioAfter := (self icon iconSize x) / (self icon iconSize y).
	
	self assert: aspectRatioBefore equals: aspectRatioAfter.
	self assert: icon extent equals: 100@200.
	
	"test 2"
	self icon extent: 100@100.
	aspectRatioAfter := (self icon iconSize x) / (self icon iconSize y).
	
	self assert: aspectRatioBefore equals: aspectRatioAfter.
	self assert: icon extent equals: 100@100.
	
	"test 3"
	self icon extent: 200@100.
	aspectRatioAfter := (self icon iconSize x) / (self icon iconSize y).
	
	self assert: aspectRatioBefore equals: aspectRatioAfter.
	self assert: icon extent equals: 200@100
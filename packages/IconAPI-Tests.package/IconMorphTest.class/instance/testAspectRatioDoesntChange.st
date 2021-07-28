testing
testAspectRatioDoesntChange

	self icon setAspectRatio: 1@2.
	self assertAspectRatioSetCorrectly: 100@200.
	self assertAspectRatioSetCorrectly: 100@100.
	self assertAspectRatioSetCorrectly: 200@100.
testing
testAspectRatioDoesntChange

	self icon setAspectRatio: 1 @ 2.
	
	self 
		assertAspectRatioSetCorrectly: 100 @ 200;
		assertAspectRatioSetCorrectly: 100 @ 100;
		assertAspectRatioSetCorrectly: 200 @ 100
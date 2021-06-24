accessing
testOpenWindow

	|testWindow|

	testWindow := ((IconMorph new) createListWindow) iconList.
	self assert: (self window bounds) equals: (testWindow bounds).
	self assert: (self window label) equals: (testWindow label).
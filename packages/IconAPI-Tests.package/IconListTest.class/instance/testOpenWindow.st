testing
testOpenWindow

	|testWindow|

	testWindow := (IconMorph newWith: MaterialIconsFetcher new) createPreview.
	self assert: (testWindow width) >  0.
	self assert: (testWindow height) > 0.
	self assert: (self window label) equals: (testWindow label)
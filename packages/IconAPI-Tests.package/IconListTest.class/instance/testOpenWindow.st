testing
testOpenWindow

	|testWindow|

	testWindow := (IconMorph newWith: MaterialIconsFetcher new) createPreview.
	
	self 
		assert: testWindow width strictlyPositive;
		assert: testWindow height strictlyPositive;
		assert: self window label equals: testWindow label
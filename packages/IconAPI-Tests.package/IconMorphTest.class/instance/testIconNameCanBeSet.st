tests
testIconNameCanBeSet

	self icon id: 'check'.
	self assert: self icon id equals: 'check'.
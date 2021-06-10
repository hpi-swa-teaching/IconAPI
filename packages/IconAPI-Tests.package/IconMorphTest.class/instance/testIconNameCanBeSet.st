tests
testIconNameCanBeSet

	self icon icon: 'check'.
	self assert: self icon icon equals: 'check'.
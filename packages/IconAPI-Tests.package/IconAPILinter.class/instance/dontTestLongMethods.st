test-for-coding-styles
dontTestLongMethods

	self assertAllAreZero: (self runLinterRule: #longMethods:)
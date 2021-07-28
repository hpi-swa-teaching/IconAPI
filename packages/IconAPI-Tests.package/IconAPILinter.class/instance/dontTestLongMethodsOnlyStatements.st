test-for-coding-styles
dontTestLongMethodsOnlyStatements

	self assertAllAreZero: (self runLinterRule: #longMethod:)
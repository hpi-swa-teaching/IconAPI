test-for-possible-bugs
dontTestPossibleMissingYourself

	self assertAllAreZero: (self runLinterRule: #smallLintMissingYourself)
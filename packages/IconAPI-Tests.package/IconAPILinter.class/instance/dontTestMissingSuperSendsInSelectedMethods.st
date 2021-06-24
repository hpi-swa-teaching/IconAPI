test-for-possible-bugs
dontTestMissingSuperSendsInSelectedMethods

	self assertAllAreZero: (self runLinterRule: #smallLintMissingSuperSends)
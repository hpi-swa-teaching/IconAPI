test-for-possible-bugs
dontTestClassInstanceVariableOverriddenByTemporaryVariable

	self assertAllAreZero: (self runLinterRule: #smallLintTempVarOverridesInstVar)
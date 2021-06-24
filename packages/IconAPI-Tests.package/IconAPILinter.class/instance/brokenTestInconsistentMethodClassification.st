test-for-miscellaneous
brokenTestInconsistentMethodClassification
	"broken in githubCI"
	self assertAllAreZero: (self runLinterRule: #smallLintInconsistentMethodClassification)
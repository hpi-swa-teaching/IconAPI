test-for-miscellaneous
dontTestInconsistentMethodClassification
	"broken in githubCI"
	self assertAllAreZero: (self runLinterRule: #smallLintInconsistentMethodClassification)
test-for-disharmonies
dontTestDataClass

	"pluggableIconSpec is supposed to only store data"

	self assertAllAreFalse: (self runLinterRule: #dataClass:)
test-for-intention-revealing
testUsesDoInsteadOfCollectOrSelect

	self assertAllAreZero: (self runLinterRule: #collectionProtocolRule:)
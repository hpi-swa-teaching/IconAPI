helper methods
clampToValidScaleFactor: aPoint

	(aPoint x < IconMorph minimumScaleFactor) ifTrue: [aPoint setX: IconMorph minimumScaleFactor setY: aPoint y].
	(aPoint y < IconMorph minimumScaleFactor) ifTrue: [aPoint setX: aPoint x setY: IconMorph minimumScaleFactor].
	^ aPoint
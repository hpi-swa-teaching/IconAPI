helper methods
calculateAspectRatio

	|gcd|
	
	gcd := self greatestCommonDivisor: (self originalForm extent).
	^ (originalForm extent) / gcd
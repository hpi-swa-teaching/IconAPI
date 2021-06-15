as yet unclassified
calculateAspectRatio

	|gcd|
	
	gcd := self greatestCommonDivisor: (self originalForm extent).
	^ (originalForm extent) / gcd
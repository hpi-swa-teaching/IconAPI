helper methods
greatestCommonDivisor: aPoint

	|valueX valueY helper|
	
	valueX := aPoint x.
	valueY := aPoint y.
	
	[valueX strictlyPositive] whileTrue: [
		helper := valueX.
		valueX := valueY \\\ valueX.
		valueY := helper].
	
	^ valueY
		
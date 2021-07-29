color setting
invertWithTransparency
	
	|bitmap|
	
 	bitmap := self originalForm bits.
	(1 to: bitmap size) do: [:pixelIndex |
		|value alpha red green blue|
		value := bitmap at: pixelIndex.
		alpha := value bitShift: -24.
		alpha strictlyPositive ifTrue: [
			red := 255 - ((value bitShift: -16) bitAnd: 255).
			green := 255 - ((value bitShift: -8) bitAnd: 255).
			blue := 255 - (value bitAnd: 255).
			bitmap at: pixelIndex put: (alpha bitShift: 24) + (red bitShift: 16) + (green bitShift: 8) + blue]]
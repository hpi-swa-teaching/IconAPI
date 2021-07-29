color setting
setColorWithTransparency: aColor

	|bitmap|
	
 	bitmap := self originalForm bits.
	(1 to: bitmap size) do: [:pixelIndex |
		|value alpha red green blue|
		value := bitmap at: pixelIndex.
		alpha := value bitShift: -24.
		alpha strictlyPositive ifTrue: [
			red := (aColor red * 255) asInteger.
			green := (aColor green * 255) asInteger.
			blue := (aColor blue * 255) asInteger.
			bitmap at: pixelIndex put: (alpha bitShift: 24) + (red bitShift: 16) + (green bitShift: 8) + blue]]
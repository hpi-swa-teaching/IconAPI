accessing
iconColor: aColor

	|colors|
	
	colors := self originalForm colorsUsed.
	colors := colors reject: [:color | color isTranslucent].
	colors do: [:color| self originalForm replaceColor: color withColor: aColor].
	iconColor := aColor.
	self updateLayout
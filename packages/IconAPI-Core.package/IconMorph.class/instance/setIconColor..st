accessing
setIconColor: aColor

	|colors|
	 
	colors := self sketchMorph form colorsUsed.
	colors := colors reject: [:color | color isTranslucent].
	colors do: [:color| self sketchMorph form replaceColor: color withColor: aColor].
	self iconColor: aColor
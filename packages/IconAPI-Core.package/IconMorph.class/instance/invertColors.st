accessing
invertColors

	|colors|
	colors := self sketchMorph form colorsUsed.
	colors := colors reject: [:color | color isTranslucent].
	colors do: [:color | self sketchMorph form replaceColor: color withColor: color negated].
	self iconColor: self iconColor negated
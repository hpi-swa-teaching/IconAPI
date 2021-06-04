accessing
invertColors

	|colors|
	colors := self form colorsUsed.
	colors := colors reject: [:color | color isTranslucent].
	colors do: [:color | self form replaceColor: color withColor: color negated].
	self iconColor: self iconColor negated
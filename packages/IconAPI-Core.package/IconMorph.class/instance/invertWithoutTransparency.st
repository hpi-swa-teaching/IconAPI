accessing
invertWithoutTransparency
	
	|colors|
	
	colors := self form colorsUsed.
	colors := colors reject: [:color | color isTranslucent].
	colors do: [:color | self form replaceColor: color withColor: color negated]

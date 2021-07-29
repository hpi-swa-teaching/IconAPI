fetching
fetchIconFormWith: aString

	|downloadStream|
	
	(self directory fileExists: aString, '.png') ifTrue: [^ self formFrom: aString].
	
	downloadStream := self downloadFileWith: aString.
	self processFile: downloadStream with: aString.
	^ self formFrom: aString

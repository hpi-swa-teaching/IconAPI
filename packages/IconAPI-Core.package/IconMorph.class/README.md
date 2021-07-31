An IconMorph is the main morph of iconAPI. 

Instance Variables
	aspectRatio:		<Object>
	fetcher:		<Object>
	iconColor:		<Object>
	isIconColorSet:		<Object>
	originalForm:		<Object>
	scaledForm:		<Object>

aspectRatio
	- determines the width to height ratio of the icon

fetcher
	- is the specific fetcher used to fetch the IconMorph, default is MaterialIcons

iconColor
	- determines the color of the icon

isIconColorSet
	- boolean which is false, when the original icon color was used and true when it got changed manually

originalForm
	- is the icon form we get when fetching the icon

scaledForm
	- is the icon form we get after scaling

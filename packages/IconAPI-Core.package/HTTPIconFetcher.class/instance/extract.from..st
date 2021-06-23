as yet unclassified
extract: anID from: aDirectory
	
	|subdirectories pic|
	
	subdirectories := aDirectory directoryEntries.
	pic := subdirectories last asFileDirectory fileEntries last.
	pic copyTo: aDirectory.
	subdirectories do: [:subdir | subdir asFileDirectory recursiveDelete].
	aDirectory rename: pic name toBe: anID,'.png'
	
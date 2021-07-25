as yet unclassified
directory

	self useOutlined
		ifTrue: [^ (FileDirectory uri: 'Icons') / 'MaterialIconsOutlined']
		ifFalse:  [^ (FileDirectory uri: 'Icons') / 'MaterialIcons']
accessing
openPreviewListWindow
	
	self iconList ifNil: [self createListWindow].
	self iconList openInWorld
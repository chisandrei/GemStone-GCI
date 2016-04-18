api
saveObjectsToExportSet: arrayOfObjs
	| theOops |
	theOops := arrayOfObjs collect: [ :each | each localObjectToGciOopType: self ].
	self gciSaveObjs: theOops
tests
testPureExportSet
	| session resultOopType serverObjClassOopType |
	session := self session.
	resultOopType := session gciExecuteString: 'Object new'.
	serverObjClassOopType := self session
		executeString: 'GsGciTestServerObj'.
	(session isObjectInExportSet: resultOopType)
		ifTrue: [ session removeObjectsFromExportSet: {resultOopType} ].
	self deny: (session isObjectInExportSet: resultOopType).
	session gciExecuteString: 'System _vmMarkSweep'.
	self
		should: [ session send: 'class' to: resultOopType ]
		raise: GsGciError.
	resultOopType := session gciExecuteString: 'Object new'.
	(session isObjectInExportSet: resultOopType)
		ifTrue: [ session removeObjectsFromExportSet: {resultOopType} ].
	session saveObjectsToExportSet: {resultOopType}.
	self assert: (session isObjectInExportSet: resultOopType)
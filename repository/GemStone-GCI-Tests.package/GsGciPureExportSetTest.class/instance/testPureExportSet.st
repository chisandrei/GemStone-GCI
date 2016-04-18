tests
testPureExportSet
	| session resultOopType serverObjClassOopType |
	session := self session.
	resultOopType := session gciExecuteString: 'Object new'.
	serverObjClassOopType := self session
		executeString: 'GsGciTestServerObj'.
	(session isObjectInPureExportSet: resultOopType)
		ifTrue: [ session removeObjectsFromPureExportSet: {resultOopType} ].
	self deny: (session isObjectInPureExportSet: resultOopType).
	session gciExecuteString: 'System _vmMarkSweep'.
	self
		should: [ session send: 'class' to: resultOopType ]
		raise: GsGciError.
	resultOopType := session gciExecuteString: 'Object new'.
	(session isObjectInPureExportSet: resultOopType)
		ifTrue: [ session removeObjectsFromPureExportSet: {resultOopType} ].
	session saveObjectsToPureExportSet: {resultOopType}.
	self assert: (session isObjectInPureExportSet: resultOopType)
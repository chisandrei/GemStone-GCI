tests
testPureExportSet
	| session resultOopType serverObjClassOopType |
	session := self session.
	[ resultOopType := session gciExecuteString: 'Object new'.
	serverObjClassOopType := self session
		executeString: 'GsGciTestServerObj'.
	(session
		send: #testIfInPureExportSet:
		to: serverObjClassOopType
		withArgs: {resultOopType asInteger})
		ifTrue: [ session removeObjectsFromExportSet: {resultOopType} ].
	self
		deny:
			(session
				send: #testIfInPureExportSet:
				to: serverObjClassOopType
				withArgs: {resultOopType asInteger}).
	session gciExecuteString: 'System _vmMarkSweep'.
	self
		should: [ session send: 'class' to: resultOopType ]
		raise: GsGciError.
	resultOopType := session gciExecuteString: 'Object new'.
	(session
		send: #testIfInPureExportSet:
		to: serverObjClassOopType
		withArgs: {resultOopType asInteger})
		ifTrue: [ session removeObjectsFromExportSet: {resultOopType} ].
	session saveObjectsToExportSet: {resultOopType}.
	self
		assert:
			(session
				send: #testIfInPureExportSet:
				to: serverObjClassOopType
				withArgs: {resultOopType asInteger}) ]
		ensure: [ session logout ]
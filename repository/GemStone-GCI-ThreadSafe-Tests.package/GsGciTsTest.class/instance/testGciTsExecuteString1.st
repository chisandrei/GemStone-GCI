tests
testGciTsExecuteString1
	| session resultOopType |
	session := GsGciTsSession login: GsGciSessionDescription testingSessionDescription.
	[ resultOopType := session gciExecuteString: 'String' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsGciOopType oopClassString
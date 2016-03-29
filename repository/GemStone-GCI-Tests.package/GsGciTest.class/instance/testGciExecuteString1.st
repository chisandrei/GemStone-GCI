tests
testGciExecuteString1
	| session resultOopType |
	session := GsGciSession login: GsGciSessionDescription testingSessionDescription.
	[ resultOopType := session gciExecuteString: 'String' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsGciOopType oopClassString
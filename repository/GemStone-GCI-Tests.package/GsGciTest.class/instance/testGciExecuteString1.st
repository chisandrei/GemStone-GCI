tests
testGciExecuteString1
	| session resultOopType |
	session := self session.
	[ resultOopType := session gciExecuteString: 'String' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsGciOopType oopClassString
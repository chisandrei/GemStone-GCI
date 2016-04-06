tests
testGciExecuteString2
	| session resultOopType |
	session := self session.
	[ resultOopType := session gciExecuteString: 'nil' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsGciOopType oopNil
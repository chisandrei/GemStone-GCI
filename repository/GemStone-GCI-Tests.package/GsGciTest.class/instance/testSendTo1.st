tests
testSendTo1
	| session result |
	session := self session.
	[ result := session send: #size to: 'abc' ]
		ensure: [ session logout ].
	self assert: result = 3
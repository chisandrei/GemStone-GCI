tests
testSendTo1
	| session result |
	session := GsGciSession login: GsGciSessionDescription testingSessionDescription.
	[ result := session send: #size to: 'abc' ]
		ensure: [ session logout ].
	self assert: result = 3
tests
xtestGciTsExecuteStringError1
	"System logout - exits gem and should result in an error"

	| session resultOopType |
	session := GsGciTsSession login: GsGciSessionDescription testingSessionDescription.
	[ resultOopType := session gciExecuteString: 'GsFile gciLogServer:''Hello Sailor''. 
	System logout.
	String' ]
		ensure: [ session logout ].
	self assert: resultOopType = GsGciOopType oopClassString
tests
testGetGciErrSType
	"execute without error"

	| session gciErrSType |
	session := GsGciSession login: GsGciSessionDescription testingSessionDescription.
	[ 
	gciErrSType := session getGciErrSType.
	self assert: gciErrSType isNil ]
		ensure: [ session logout ]
tests
testGetGciErrSType
	"execute without error"

	| session gciErrSType |
	session := self session.
	[ 
	gciErrSType := session getGciErrSType.
	self assert: gciErrSType isNil ]
		ensure: [ session logout ]
tests
testGetGciErrSType
	"execute without error"

	| gciErrSType |
	gciErrSType := self session getGciErrSType.
	self assert: gciErrSType isNil
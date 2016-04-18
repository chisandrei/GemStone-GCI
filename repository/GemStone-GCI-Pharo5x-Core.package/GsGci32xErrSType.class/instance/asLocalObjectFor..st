converting
asLocalObjectFor: aGciSession
	"at the cost of some round trips, this can be improved"

	| exceptionClass exception |
	exceptionClass := self errorToExceptionMap at: self number ifAbsent: [ GsGciError ].
	exception := exceptionClass gciSession: aGciSession gci32xErrSType: self.
	^ exception signal
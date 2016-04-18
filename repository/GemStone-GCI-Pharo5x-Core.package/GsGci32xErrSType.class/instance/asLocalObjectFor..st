converting
asLocalObjectFor: aGciSession
	"at the cost of some round trips, this can be improved"

	| exceptionClass exception actionArgs |
	exceptionClass := self errorToExceptionMap at: self number ifAbsent: [ GsGciError ].
	exception := exceptionClass gciSession: aGciSession gci32xErrSType: self.
	actionArgs := exception signal.
	actionArgs isArray
		ifTrue: [ | action actionValue |
			action := actionArgs at: 1.
			actionValue := actionArgs at: 2.
			action == #resume
				ifTrue: [ ^ aGciSession continueContext: self context with: actionValue ].
			self error: 'Unknown action ' , action printString , ' for exception ' , exceptionClass printString ]
		ifFalse:
			[ self error: 'Unknown action ' , actionArgs printString , ' for exception ' , exceptionClass printString ]
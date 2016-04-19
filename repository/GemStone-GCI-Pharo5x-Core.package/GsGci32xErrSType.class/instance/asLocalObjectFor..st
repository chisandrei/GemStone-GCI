converting
asLocalObjectFor: aGciSession
	"at the cost of some round trips, this can be improved"

	| exceptionClass exception actionResult |
	exceptionClass := self errorToExceptionMap
		at: self number
		ifAbsent: [ GsGciError ].
	exception := exceptionClass gciSession: aGciSession gci32xErrSType: self.
	actionResult := exception signal.
	actionResult isArray
		ifTrue: [ | action actionValueOopType |
			action := actionResult at: 1.
			actionValueOopType := (actionResult at: 2) localObjectToGciOopType: aGciSession.
    (action) == #'abort'
        ifTrue: [
	       aGciSession send: #terminate to: self context. 
	       ^ actionResult ].
			action == #resume
				ifTrue: [ ^ aGciSession continueContext: self context with: actionValueOopType ].
			self
				error:
					'Unknown action ' , action printString , ' for exception '
						, exceptionClass printString ]
		ifFalse: [ actionResult == #resume
				ifTrue: [ ^ aGciSession continueContext: self context ].
			self
				error:
					'Unknown action ' , actionResult printString , ' for exception '
						, exceptionClass printString ]
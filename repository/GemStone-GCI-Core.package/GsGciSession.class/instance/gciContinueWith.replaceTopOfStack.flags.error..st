gci api
gciContinueWith: processOopType replaceTopOfStack: replaceTopOfStackOopType flags: flags error: aGsGci32xErrSType
	" replaceTopOfStackOopType - If not OOP_ILLEGAL, replace the top of the Smalltalk 
	  evaluation stack with  this value before continuing"

	self checkSession.
	self gciLibrary
		critical: [ :lib | 
			| result |
			lib apiGciSetSessionId: gciSessionNumber.
			result := lib
				apiGciContinueWith: processOopType
				a: replaceTopOfStackOopType
				a: flags
				a: aGsGci32xErrSType.
			^ result asInteger = 20
				ifTrue: [ nil gciResultToGsOopType: self ]
				ifFalse: [ result gciResultToGsOopType: self ] ]
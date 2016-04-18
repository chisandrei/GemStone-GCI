api
continueContext: aProcessGciOopType with: replaceTopOfStackOopType
	" replaceTopOfStackOopType - If not OOP_ILLEGAL, replace the top of the Smalltalk 
	  evaluation stack with  this value before continuing"

	| result |
	result := self
		gciContinueWith: aProcessGciOopType
		replaceTopOfStack: replaceTopOfStackOopType
		flags: 0
		error: GsGci32xLibrary nullPtr.
	^ result asLocalObjectFor: self ifNotConverted: [ :resultGciOopType | resultGciOopType ]
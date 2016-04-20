running
tearDown
	super tearDown.
	GsGci32xErrSType
		errorToExceptionMap: theExceptionMap;
		defaultErrorExceptionClass: theDefaultExceptionClass.
	theSession
		ifNotNil: [ | sess |
			sess := theSession.
			theSession := nil.
			sess logout ]
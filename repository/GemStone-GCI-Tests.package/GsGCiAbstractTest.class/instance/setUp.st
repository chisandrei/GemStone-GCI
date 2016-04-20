running
setUp
	super setUp.
	theExceptionMap := GsGci32xErrSType errorToExceptionMap.
	theDefaultExceptionClass := GsGci32xErrSType defaultErrorExceptionClass.
	GsGci32xErrSType
		errorToExceptionMap: GsGci32xErrSType defaultErrorToExceptionMap;
		defaultErrorExceptionClass: GsGciError
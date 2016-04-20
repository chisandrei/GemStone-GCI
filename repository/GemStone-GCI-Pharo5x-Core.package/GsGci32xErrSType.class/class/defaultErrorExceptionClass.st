accessing
defaultErrorExceptionClass
	^ DefaultErrorExceptionClass ifNil: [ DefaultErrorExceptionClass := GsGciError ]
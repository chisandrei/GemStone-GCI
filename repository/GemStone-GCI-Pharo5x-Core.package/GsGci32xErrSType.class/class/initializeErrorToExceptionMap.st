initialize
initializeErrorToExceptionMap
	ErrorToExceptionMap := Dictionary new
		at: 6012 put: GsGciTransactionBacklog;
		at: 4100 put: GsGciLostSessionError;
		yourself
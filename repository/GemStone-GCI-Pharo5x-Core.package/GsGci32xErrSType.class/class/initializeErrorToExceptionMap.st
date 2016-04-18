initialize
initializeErrorToExceptionMap
	"self initialize"

	ErrorToExceptionMap := Dictionary new
		at: 2336 put: GsGciClientForwarderSend;
		at: 4100 put: GsGciLostSessionError;
		at: 6012 put: GsGciTransactionBacklog;
		yourself
testing
checkSession
	self isSessionValid
		ifFalse: [ ^ GsGciLostSessionError new gciSession: self; signal ]
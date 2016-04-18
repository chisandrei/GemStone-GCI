client forwarder
clientObjectForwarderForOop: anOop
	^ self
		clientObjectForwarderForOop: anOop
		ifAbsent: [ self error: 'No client forwarder found for oop: ' , anOop printString , '.' ]
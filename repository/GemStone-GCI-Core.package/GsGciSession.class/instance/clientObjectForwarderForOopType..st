client forwarder
clientObjectForwarderForOopType: aGsGciOopType
	^ self
		clientObjectForwarderForOop: aGsGciOopType asInteger
		ifAbsent: [ self error: 'No client forwarder found for: ' , aGsGciOopType printString , '.' ]
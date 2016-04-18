client forwarder
clientObjectForwarderForOopType: aGsGciOopType ifAbsent: absentBlock
	^ self
		clientObjectForwarderForOop: aGsGciOopType asInteger
		ifAbsent: absentBlock
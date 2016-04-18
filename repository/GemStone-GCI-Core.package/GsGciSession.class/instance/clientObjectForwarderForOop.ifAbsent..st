client forwarder
clientObjectForwarderForOop: anOop ifAbsent: absentBlock
	^ self clientObjectForwarders at: anOop ifAbsent: absentBlock
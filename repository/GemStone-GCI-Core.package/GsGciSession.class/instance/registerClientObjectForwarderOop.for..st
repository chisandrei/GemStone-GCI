client forwarder
registerClientObjectForwarderOop: anOop for: aClientObject
	^ self clientObjectForwarders at: anOop put: aClientObject
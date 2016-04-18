client forwarder
registerClientObjectForwarderOopType: clientForwarderOopType for: aClientObject
	^ self
		registerClientObjectForwarderOop: clientForwarderOopType asInteger
		for: aClientObject
accessing
clientObjectForwarders
	^ clientObjectForwarders ifNil: [ clientObjectForwarders := Dictionary new ]
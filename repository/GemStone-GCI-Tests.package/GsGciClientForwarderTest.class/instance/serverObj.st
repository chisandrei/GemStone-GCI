accessing
serverObj
	^ serverObj
		ifNil: [ | serverObjClass |
			serverObjClass := self session executeString: 'GsGciTestServerObj'.
			serverObj := self session send: #new to: serverObjClass ]
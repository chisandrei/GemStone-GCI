accessing
serverObj
	^ serverObj
		ifNil: [ serverObj := self session executeString: 'GsGciTestServerObj new' ]
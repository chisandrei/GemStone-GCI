accessing
clientForwarder
	^ clientForwarder
		ifNil: [ clientForwarder := self session send: #clientForwarder to: self serverObj.
			self assert: (self session isObjectInExportSet: clientForwarder) ]
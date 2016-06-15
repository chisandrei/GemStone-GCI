api
sendFetchBytes: selector to: receiver withArgs: args
	| receiverOopType arrayOfGsOopTypes |
	receiverOopType := receiver localObjectToGciOopType: self.
	arrayOfGsOopTypes := args collect: [ :each | each localObjectToGciOopType: self ].
	self is331
		ifTrue: [ ^ self
				gciPerformFetchBytes: receiverOopType
				selector: selector
				args: arrayOfGsOopTypes
				bufferSize: 500000 ]
		ifFalse: [ | result |
			result := self
				gciPerform: receiverOopType
				selector: selector
				args: arrayOfGsOopTypes
				flags: 0
				environmentId: 0.
			"skip class check ... assume it's bytes and just get it"
			^ result asLocalByteObjectFor: self ifNotConverted: [ :resultGciOopType | resultGciOopType ] ]
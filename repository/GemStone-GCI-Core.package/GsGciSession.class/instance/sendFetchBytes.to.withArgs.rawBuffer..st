api
sendFetchBytes: selector to: receiver withArgs: args rawBuffer: aStringOrByteArray
	| receiverOopType arrayOfGsOopTypes |
	self is331
		ifFalse: [ self error: 'sendFetchBytes:to:withArgs:rawBuffer: is only available in 3.3.1 or later' ].
	receiverOopType := receiver localObjectToGciOopType: self.
	arrayOfGsOopTypes := args collect: [ :each | each localObjectToGciOopType: self ].
	^ self
		gciPerformFetchBytes: receiverOopType
		selector: selector
		args: arrayOfGsOopTypes
		rawBuffer: aStringOrByteArray
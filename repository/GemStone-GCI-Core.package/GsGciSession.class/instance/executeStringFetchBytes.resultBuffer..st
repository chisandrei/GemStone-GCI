api - 3.3.x
executeStringFetchBytes: aString resultBuffer: aStringOrByteArray
	^ (self
		gciExecuteStringFetchBytes: aString
		sourceClass: GsGciOopType oopClassString
		contextObject: GsGciOopType oopNoContext
		symbolList: GsGciOopType oopNil
		buffer: aStringOrByteArray) asLocalObjectFor: self ifNotConverted: [ :aGsOopType | aGsOopType ]
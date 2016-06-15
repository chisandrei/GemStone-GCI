api - 3.3.x
executeStringFetchBytes: aString rawBuffer: aStringOrByteArray
	^ (self
		gciExecuteStringFetchBytes: aString
		sourceClass: GsGciOopType oopClassString
		contextObject: GsGciOopType oopNoContext
		symbolList: GsGciOopType oopNil
		rawBuffer: aStringOrByteArray) asLocalObjectFor: self ifNotConverted: [ :aGsOopType | aGsOopType ]
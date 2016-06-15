api - 3.3.x
executeStringFetchBytes: aString rawBuffer: aStringOrByteArray
	"returns number of bytes in result"

	^ (self
		gciExecuteStringFetchBytes: aString
		sourceClass: GsGciOopType oopClassString
		contextObject: GsGciOopType oopNoContext
		symbolList: GsGciOopType oopNil
		rawBuffer: aStringOrByteArray) asLocalObjectFor: self ifNotConverted: [ :aGsOopType | aGsOopType ]
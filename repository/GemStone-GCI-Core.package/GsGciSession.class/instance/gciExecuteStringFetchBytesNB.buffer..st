gci api - non-blocking 3.3.x
gciExecuteStringFetchBytesNB: source buffer: aStringOrByteArray
	"Only available in GemStone 3.3.x and beyond"

	^ self
		gciExecuteStringFetchBytesNB: source
		sourceClass: GsGciOopType oopClassString
		contextObject: GsGciOopType oopNoContext
		symbolList: GsGciOopType oopNil
		buffer: aStringOrByteArray
gci api - 3.3.x
gciExecuteStringFetchBytes: source sourceClass: sourceClassOopType contextObject: contextObjectOopType symbolList: symbolListOopType bufferSize: bufferSize
	"Only available in GemStone 3.3.x and beyond"

	^ self
		gciExecuteStringFetchBytes: source
		sourceClass: sourceClassOopType
		contextObject: contextObjectOopType
		symbolList: symbolListOopType
		buffer: (String new: bufferSize)
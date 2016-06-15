gci api - 3.3.x
gciExecuteStringFetchBytes: source sourceClass: sourceClassOopType contextObject: contextObjectOopType symbolList: symbolListOopType buffer: aStringOrByteArray
	"Only available in GemStone 3.3.x and beyond"

	| resultSize |
	resultSize := self
		gciExecuteStringFetchBytes: source
		sourceClass: sourceClassOopType
		contextObject: contextObjectOopType
		symbolList: symbolListOopType
		rawBuffer: aStringOrByteArray.
	^ aStringOrByteArray copyFrom: 1 to: resultSize
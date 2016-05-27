gci api - 3.3.x
gciExecuteStringFetchBytes: source  maxResultSize: maxResultSize
	"Only available in GemStone 3.3.x and beyond"

	^ self
		gciExecuteStringFetchBytes: source
		sourceClass: GsGciOopType oopClassString
		contextObject: GsGciOopType oopNoContext
		symbolList: GsGciOopType oopNil
		maxResultSize: maxResultSize
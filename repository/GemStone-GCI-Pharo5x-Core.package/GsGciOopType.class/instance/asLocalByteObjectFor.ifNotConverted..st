converting
asLocalByteObjectFor: aGciSession ifNotConverted: notConvertedBlock
	"we are expecting a String object = skip type and class checks"

	aGciSession gciLibrary
		critical: [ :lib | ^ self fetchChars: aGciSession ]
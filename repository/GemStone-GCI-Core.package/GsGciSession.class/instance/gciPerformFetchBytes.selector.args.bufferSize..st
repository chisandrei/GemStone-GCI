gci api - 3.3.1.x
gciPerformFetchBytes: receiverOopType selector: selector args: arrayOfGsOopTypes bufferSize: bufferSize
	"Only available in GemStone 3.3.1.x and beyond"

	^ self
		gciPerformFetchBytes: receiverOopType
		selector: selector
		args: arrayOfGsOopTypes
		buffer: (String new: bufferSize)
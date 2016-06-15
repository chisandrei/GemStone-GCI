api - 3.3.x
executeStringFetchBytes: aString bufferSize: bufferSize
	"returns String result"

	| buffer resultSize |
	buffer := String new: bufferSize.
	resultSize := self executeStringFetchBytes: aString rawBuffer: buffer.
	^ buffer copyFrom: 1 to: resultSize
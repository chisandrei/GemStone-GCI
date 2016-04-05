converting
asLocalByteObj: aGciSession
	| class |
	class := (aGciSession gciLibrary apiGciFetchClass: self) gciResultToGsOopType: aGciSession.
	class = self oopClassString
		ifTrue: [ ^ self fetchChars: aGciSession ].
	class = self oopClassUnicode7
		ifTrue: [ ^ self fetchChars: aGciSession ].
	class = self oopClassSymbol
		ifTrue: [ ^ (self fetchChars: aGciSession) asSymbol ].
	class = self oopClassDoubleByteString
		ifTrue: [ ^ self fetchDoubleByteChars: aGciSession ].
	class = self oopClassUnicode16
		ifTrue: [ ^ self fetchDoubleByteChars: aGciSession ].
	class = self oopClassDoubleByteSymbol
		ifTrue: [ ^ (self fetchDoubleByteChars: aGciSession) asSymbol ].
	class = self oopClassQuadByteString
		ifTrue: [ ^ self fetchQuadByteChars: aGciSession ].
	class = self oopClassQuadByteSymbol
		ifTrue: [ ^ (self fetchQuadByteChars: aGciSession) asSymbol ].
	class = self oopClassUnicode32
		ifTrue: [ ^ self fetchQuadByteChars: aGciSession ].
	class = self oopClassByteArray
		ifTrue: [ ^ self fetchBytes: aGciSession ].
	self error: 'Unsupported gci byte class ' , class printString
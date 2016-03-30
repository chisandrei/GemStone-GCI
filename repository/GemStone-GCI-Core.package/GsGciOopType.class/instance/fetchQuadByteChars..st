private
fetchQuadByteChars: aGciSession
	| bytes |
	bytes := self fetchBytes: aGciSession.
	^ WideString
		streamContents: [ :s | 
			1 to: bytes size by: 4 do: [ :i | 
				| codePoint |
				codePoint := (bytes at: i)
					bitOr: ((bytes at: i + 1) << 8 bitOr: ((bytes at: i + 2) << 16 bitOr: (bytes at: i + 3) << 24)).
				s nextPut: (Character value: codePoint) ] ]
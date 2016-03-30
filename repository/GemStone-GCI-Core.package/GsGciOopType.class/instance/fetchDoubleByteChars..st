private
fetchDoubleByteChars: aGciSession
	| bytes |
	bytes := self fetchBytes: aGciSession.
	^ WideString
		streamContents: [ :s | 
			1 to: bytes size by: 2 do: [ :i | 
				| codePoint |
				codePoint := (bytes at: i) bitOr: (bytes at: i + 1) << 8.
				s nextPut: (Character value: codePoint) ] ]
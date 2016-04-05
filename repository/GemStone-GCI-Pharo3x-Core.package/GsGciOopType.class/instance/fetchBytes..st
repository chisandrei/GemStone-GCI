private
fetchBytes: aGciSession
	| bytes size result |
	size := aGciSession gciLibrary apiGciFetchSize_: self.
	bytes := ByteArray new: size.
	result := aGciSession gciLibrary
		apiGciFetchBytes_: self
		a: 1
		a: bytes
		a: bytes size.
	result ~= size
		ifTrue: [ self error: 'GciFetchBytes() failed' ].
	^ bytes
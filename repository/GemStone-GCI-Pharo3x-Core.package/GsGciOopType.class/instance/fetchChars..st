private
fetchChars: aGciSession
	| string size result |
	size := aGciSession gciLibrary apiGciFetchSize_: self.
	string := String new: size + 1.
	result := aGciSession gciLibrary
		apiGciFetchChars_: self
		a: 1
		a: string
		a: string size.
	result ~= size
		ifTrue: [ self error: 'GciFetchChars() failed' ].
	^ string copyFrom: 1 to: size
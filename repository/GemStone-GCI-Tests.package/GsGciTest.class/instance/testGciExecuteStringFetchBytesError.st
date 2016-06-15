tests 3.3.x
testGciExecuteStringFetchBytesError
	self session gciVersion < '3.3.0' asMetacelloVersionNumber
		ifTrue: [ ^ self ].	"only applies to version 3.3.0 and above"
	self
		should: [ (self session gciExecuteStringFetchBytes: '1 foo' bufferSize: 20)
				asLocalObjectFor: self
				ifNotConverted: [ :aGsOopType | aGsOopType ] ]
		raise: GsGciError
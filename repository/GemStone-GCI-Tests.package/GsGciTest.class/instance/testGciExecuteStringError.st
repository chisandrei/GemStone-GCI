tests
testGciExecuteStringError
	self
		should: [ (self session gciExecuteString: '1 foo')
				asLocalObjectFor: self
				ifNotConverted: [ :aGsOopType | aGsOopType ] ]
		raise: GsGciError
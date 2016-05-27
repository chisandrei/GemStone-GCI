testing
isClassForVersion: aString
	^ (aString beginsWith: '3.3.0') not
		and: [ (aString beginsWith: '3.3') or: [ aString beginsWith: '3.4' ] ]
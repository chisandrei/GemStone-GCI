api
stepThrough: aProcessGciOopType level: level
	| result |
	result := self gciStep: aProcessGciOopType level: level through: true.
	^ result asLocalObjectFor: self ifNotConverted: [ :resultGciOopType | resultGciOopType ]
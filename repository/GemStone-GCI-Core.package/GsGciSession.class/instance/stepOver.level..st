api
stepOver: aProcessGciOopType level: level
	| result |
	result := self gciStep: aProcessGciOopType level: level.
	^ result asLocalObjectFor: self ifNotConverted: [ :resultGciOopType | resultGciOopType ]
accessing
logout
	| sess |
	session ifNil: [ ^ self ].
	sess := session.
	session := nil.
	sess logout.

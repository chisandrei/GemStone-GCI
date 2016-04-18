accessing
gciSession: anObject
	super gciSession: anObject.
	gciSession invalidateSession.
	self halt.
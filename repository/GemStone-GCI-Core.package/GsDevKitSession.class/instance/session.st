accessing
session
	^ session ifNil: [ session := GsGciSession login: self sessionDescription ]
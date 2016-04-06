instance creation
forSessionNamed: aSessionName
	| sessionDescription |
	sessionDescription := self sessionDescriptionForSessionNamed: aSessionName.
	^ self new
		sessionDescription: sessionDescription;
		yourself
instance creation
forSessionNamed: aSessionName
	| sessionDescription |
	sessionDescription := GsGciSessionDescription
		importFrom: self gsDevKitSessionDescriptionPath / aSessionName.
	^ self new
		sessionDescription: sessionDescription;
		yourself
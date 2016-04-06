GsDevKit
gsDevKitSessionDescriptionPath
	^ (Smalltalk os environment
		at: 'GS_SYS_SESSIONS'
		ifAbsent: [ | clientDescriptionsPath |
			clientDescriptionsPath := 'client/descriptions'.
			^ self todeClientSysLocalPath / clientDescriptionsPath ]) asFileReference
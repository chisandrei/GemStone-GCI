*GemStone-GCI-Core
localObjectToGciOopType: aGciSession
	^ self
		ifTrue: [ GsGciOopType oopTrue ]
		ifFalse: [ GsGciOopType oopFalse ]
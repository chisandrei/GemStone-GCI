tests
testLocalSpecials
	self session localSpecialsListForGsGciTest
		do: [ :assoc | 
			| local |
			local := self session executeString: assoc key.
			self assert: local = assoc value ]
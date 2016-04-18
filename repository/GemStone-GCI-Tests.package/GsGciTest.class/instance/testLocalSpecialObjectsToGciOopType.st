tests
testLocalSpecialObjectsToGciOopType
	{
	1.0.
	-1.0}.	"specials that remain to be handled"
	{1.
	-1.
	$a.
	nil.
	true.
	false}
		do: [ :localSpecial | 
			| gsOopType |
			gsOopType := localSpecial localObjectToGciOopType: self session.
			self assert: gsOopType asLocalSpecialObj = localSpecial ] 
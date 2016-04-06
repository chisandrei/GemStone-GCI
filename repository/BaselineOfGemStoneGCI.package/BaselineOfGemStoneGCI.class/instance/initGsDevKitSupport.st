doits
initGsDevKitSupport
	"support for GsDevKit_home"

	Smalltalk os environment
		at: 'GS_HOME'
		ifPresent: [ :gsHome | (Smalltalk at: #GsDevKitSession) perform: #todeClientRoot: with: gsHome ]
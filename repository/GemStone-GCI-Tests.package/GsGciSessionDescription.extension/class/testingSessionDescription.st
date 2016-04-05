*GemStone-GCI-Tests
testingSessionDescription
	^ self new
		name: 'GemStone-GCI-Testing';
		stoneHost: 'localhost';
		stoneName: 'GemStone-GCI-Testing';
		gemHost: 'localhost';
		netLDI: 'GemStone-GCI-Testing_ldi';
		userId: 'DataCurator';
		password: 'swordfish';
		gemstoneVersion: '3.3.0';
		yourself
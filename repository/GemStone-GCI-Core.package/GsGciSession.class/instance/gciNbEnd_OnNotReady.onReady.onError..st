gci api - non-blocking
gciNbEnd_OnNotReady: notReadyBlock onReady: readyBlock onError: errorBlock
	^ self gciNbEnd_OnNotReady: notReadyBlock onReadyRaw: [ :rawResult | readyBlock value: (rawResult gciResultToGsOopType: self) ] onError: errorBlock
tests
testSigAbortHandlingNew
	| session1 session2 gciTestServerClassOopType oldStnSigAbortCrBacklog retryLimit retryCount results |
	session1 := self newSession.
	session2 := self newSession.
	gciTestServerClassOopType := session1 executeString: 'GsGciTestServerObj'.
	[ 
	| session2SessionId session1SessionId gciErrSType session2SigAbort |
	session1SessionId := session1 send: #enableSignaledFinishTransactionErrorAndGetSessionId to: gciTestServerClassOopType.
	session2SessionId := session2 send: #enableSignaledFinishTransactionErrorAndGetSessionId to: gciTestServerClassOopType.
	oldStnSigAbortCrBacklog := session1 send: #getStnSignalAbortCrBacklog to: gciTestServerClassOopType.
	session1 send: #setStnSignalAbortCrBacklog: to: gciTestServerClassOopType withArgs: {20}.
	session2SigAbort := false.
	retryLimit := 10.
	retryCount := 0.
	results := OrderedCollection new.
	[ session2SigAbort ]
		whileFalse: [ 
			session1 send: #doCommits: to: gciTestServerClassOopType withArgs: {20}.
			session2 gciPollForSignal
				ifTrue: [ session2SigAbort := true ]
				ifFalse: [ 
					(session1 send: #sessionsReferencingOldestCr: to: gciTestServerClassOopType withArgs: {session2SessionId})
						ifTrue: [ self fail: 'expected a pending SigAbort error for session 2.' ].
					results
						add:
							(session1
								send: #sessionsReferencingOldestCrInTransactionReport:
								to: gciTestServerClassOopType
								withArgs: {session2SessionId}).
					retryCount := retryCount + 1.
					retryCount > retryLimit
						ifTrue: [ self fail: 'Retry limit exceeded' ].
					(Delay forSeconds: 1) wait ] ].
	gciErrSType := session2 getGciErrSType.
	self assert: gciErrSType notNil.
	self assert: gciErrSType number = 6012.	"#rtErrSignalFinishTransaction"
	self assert: gciErrSType messageAsString = 'a TransactionBacklog occurred (notification 6012), inTransaction=nil'.
	gciErrSType number = 6012
		ifTrue: [ 
			"STN_COMMIT_RECORD_QUEUE_SIZE and STN_SIGNAL_ABORT_CR_BACKLOG before and after?"
			session2 send: #finishTransaction to: gciTestServerClassOopType ] ]
		ensure: [ 
			session1 send: #setStnSignalAbortCrBacklogAndCleanup: to: gciTestServerClassOopType withArgs: {oldStnSigAbortCrBacklog}.
			session1 logout.
			session2 logout ]
API
apiGciGemTrace: level
"/* GciGemTrace
    For use in debugging the implementation or client code.
    To be called after GciLogin , argument values are
      level = 0 none, 1 commands, 2 commands+args , 3 even more
    Function result is previous value of the tracing state.
    When called with level > 0 starts tracing in both the client
    and gem process, and prevents that gem process from deleting its
    log file on process exit.  The gem process will write trace information to
    it's log file; the libgcirpc.so will write trace information
    to a gci<pid>trace.log file in the current directory of the client process.
    When called with level == 0, shuts off tracing.

    Tracing may also be controlled by the GS_LGC_DEBUG environment variable,
      such as   export GS_LGC_DEBUG=1 
    in the environments of the GCI client and of the startnetldi .
    When started from the environment variable, tracing is started independently
    in the client and the gem processes, depending upon their respective
    environments.  For the gem, it's value of GS_LGC_DEBUG inherits from
    the netldi, which in turn is inherited from the environment of the
    startnetldi.
 */
  GCI_ALIGN_STACK EXTERN_GCI_DEC(int) 
GciGemTrace(int level);
"

	^ self ffiCall: #( int GciGemTrace(int level) )
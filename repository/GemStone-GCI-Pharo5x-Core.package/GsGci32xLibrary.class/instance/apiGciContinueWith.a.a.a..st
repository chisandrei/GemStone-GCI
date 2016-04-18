API
apiGciContinueWith: process a: replaceTopOfStack a: flags a: error
"/* =============================================================================
 * GciContinueWith function
 *   Continue code execution in GemStone after an error.
 *
 * Input Arguments:
 *   process - The OOP of a Process object (obtained as the value of the
 *             context field of an error report returned by GciErr).
 *
 *   replaceTopOfStack - If not OOP_ILLEGAL, replace the top of the
 *        Smalltalk evaluation stack with  this value before continuing.
 *     Gs64 v3.0:  If OOP_ILLEGAL, and top frame is AbstractException>>signal,
                   then TOS replaced with OOP_NIL ,
 *                 to be consistent with  AbstractException>>resume .
 *
 *   flags - same semantics as flags argument to GciPerformNoDebug .
 *
 *   *error -  if not NULL, continue with an error. takes
 *                      precedence over replaceTopOfStack .
 *             Top frame of stack must be AbstractException>>signal
 *                 or   AbstractException >>_signalFromPrimitive .
 *             Within *error, if error->exceptionObj is not OOP_NIL
 *             it is used to replace self in the top frame,
 *             otherwise error->number is used to construct a kind of
 *             AbstractException to replace self in the top frame.
 *             Then execution is restarted at start of top frame's method.
 *
 * Return Value:
 *   Returns the OOP of the result of the GemStone Smalltalk code that was
 *   executed. Returns OOP_NIL in case of error.
 *==============================================================================
 */
  EXTERN_GCI_DEC(OopType)
GciContinueWith(
  OopType process,
  OopType replaceTopOfStack,
  int flags,  /* same as GciPerformNoDebug flags, but single step has
                        no effect */
  GciErrSType *error
);"
	
	^ self ffiCall: #( GsGciOopType GciContinueWith( GsGciOopType process, GsGciOopType replaceTopOfStack, int flags, GsGci32xErrSType *error ) )
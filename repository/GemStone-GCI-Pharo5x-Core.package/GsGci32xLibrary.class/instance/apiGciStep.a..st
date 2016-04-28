API
apiGciStep: process a: level
"/* =============================================================================
 * GciStep, GciStep_   functions
 *
 *  Deprecated , debuggers should use instance methods in GsProcess.
 *
 *   Continue code execution in GemStone with specified single step
 *   semantics. Intended for use by debuggers.
 *
 * Input Arguments:
 *   process	The OOP of a GsProcess object (obtained as the value of the
 *              context field of an error report returned by GciErr).
 *
 *   level  0 means step-into semantics starting from top of stack
 *          1 means step-over semantics starting from top of stack
 *          > 1 means step-over semantics from specified level on stack.
 *
 *   level < 0 or (level > GciPerform(aProcess, stackDepth, NULL, 0))
 *          will generate an error
 *
 *   through == TRUE and level == 1 gives step through semantics, stopping
 *         in blocks for which top of stack frame is home method 
 *
 * Return Value:
 *   Returns the OOP of the result of the Smalltalk code that was executed.
 *   Returns OOP_ILLEGAL in case of error.
 *==============================================================================
 */
  EXTERN_GCI_DEC(OopType) 
GciStep(OopType process, int level); /* through == FALSE */

  EXTERN_GCI_DEC(OopType) 
GciStep_(OopType process, int level, BoolType through);

  /* GciNbStep,  Deprecated ,
   * non blocking variant of GciStep , use GciNbEnd_ to get result 
   */
  EXTERN_GCI_DEC(void) 
GciNbStep(OopType process,int    level); /* through == FALSE */

  EXTERN_GCI_DEC(void) 
GciNbStep_(OopType process,int level, BoolType through);
"
	
	^ self ffiCall: #( GsGciOopType GciStep( GsGciOopType process, int level ) )
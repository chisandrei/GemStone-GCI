API - export set
apiGciSaveObjs: theOops a: numOops
"/* ==========================================================================
 *  GciSaveObjs                 (behavior has changed in Gemstone64)
 *
 *  If called from a user action
 *     adds specified objects to the user action's exportSet,
 *  else
 *    adds the specified objects to the sessions internal PureExportSet.
 *    to prevent their being garabage collected.
 *
 *  The user action's export set does not contributed to objects appearing
 *  in the ExportedDirtyObjs set .
 *
 *  This will prevent Gemstone garbage collection from causing
 *  the objects to disappear during a session because they are unreferenced.
 *  Does NOT cause the objects to be referenced from a permanent object,
 *  and thus there is no guarantee that they will be saved to disk at commit.
 *
 *   Note that for results of GciNew*, GciCreate*, GciSend*, GciPerform*,
 *   GciExecute* GciResolve*  and GciI64ToOop
 *   an automatic GciSaveObjs() is performed with the results as argument.
 *   GciRelease* calls may be used to cancel the effect of a GciSaveObjs call,
 *   thus making objects eligible for garbage collection.
 *
 *   See also GciDirtyExportedObjs() .
 *
 *    arguments: theOops, an array of oops,
 *               numOops, the number of elements in theOops
 * ==========================================================================
 */
  GCI_ALIGN_STACK EXTERN_GCI_DEC(void)
GciSaveObjs(const OopType theOops[], int numOops);
"
	^ self ffiCall: #( void GciSaveObjs( ulong theOops, long numOops) )
	

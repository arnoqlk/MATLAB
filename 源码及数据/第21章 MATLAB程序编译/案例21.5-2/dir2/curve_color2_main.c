/*
 * MATLAB Compiler: 4.8 (R2008a)
 * Date: Sat Oct 02 15:48:18 2010
 * Arguments: "-B" "macro_default" "-m" "-W" "main" "-T" "link:exe" "-m" "-W"
 * "main" "-T" "link:exe" "curve_color2.m" "-d" "dir2" 
 */

#include <stdio.h>
#include "mclmcrrt.h"
#ifdef __cplusplus
extern "C" {
#endif

extern mclComponentData __MCC_curve_color2_component_data;

#ifdef __cplusplus
}
#endif

static HMCRINSTANCE _mcr_inst = NULL;


#ifdef __cplusplus
extern "C" {
#endif

static int mclDefaultPrintHandler(const char *s)
{
  return mclWrite(1 /* stdout */, s, sizeof(char)*strlen(s));
}

#ifdef __cplusplus
} /* End extern "C" block */
#endif

#ifdef __cplusplus
extern "C" {
#endif

static int mclDefaultErrorHandler(const char *s)
{
  int written = 0;
  size_t len = 0;
  len = strlen(s);
  written = mclWrite(2 /* stderr */, s, sizeof(char)*len);
  if (len > 0 && s[ len-1 ] != '\n')
    written += mclWrite(2 /* stderr */, "\n", sizeof(char));
  return written;
}

#ifdef __cplusplus
} /* End extern "C" block */
#endif

/* This symbol is defined in shared libraries. Define it here
 * (to nothing) in case this isn't a shared library. 
 */
#ifndef LIB_curve_color2_C_API 
#define LIB_curve_color2_C_API /* No special import/export declaration */
#endif

LIB_curve_color2_C_API 
bool MW_CALL_CONV curve_color2InitializeWithHandlers(
    mclOutputHandlerFcn error_handler,
    mclOutputHandlerFcn print_handler
)
{
  if (_mcr_inst != NULL)
    return true;
  if (!mclmcrInitialize())
    return false;
  if (!mclInitializeComponentInstanceWithEmbeddedCTF(&_mcr_inst,
                                                     &__MCC_curve_color2_component_data,
                                                     true, NoObjectType,
                                                     ExeTarget, error_handler,
                                                     print_handler, 174690, NULL))
    return false;
  return true;
}

LIB_curve_color2_C_API 
bool MW_CALL_CONV curve_color2Initialize(void)
{
  return curve_color2InitializeWithHandlers(mclDefaultErrorHandler,
                                            mclDefaultPrintHandler);
}

LIB_curve_color2_C_API 
void MW_CALL_CONV curve_color2Terminate(void)
{
  if (_mcr_inst != NULL)
    mclTerminateInstance(&_mcr_inst);
}

int run_main(int argc, const char **argv)
{
  int _retval;
  /* Generate and populate the path_to_component. */
  char path_to_component[(PATH_MAX*2)+1];
  separatePathName(argv[0], path_to_component, (PATH_MAX*2)+1);
  __MCC_curve_color2_component_data.path_to_component = path_to_component; 
  if (!curve_color2Initialize()) {
    return -1;
  }
  _retval = mclMain(_mcr_inst, argc, argv, "curve_color2", 0);
  if (_retval == 0 /* no error */) mclWaitForFiguresToDie(NULL);
  curve_color2Terminate();
  mclTerminateApplication();
  return _retval;
}

int main(int argc, const char **argv)
{
  if (!mclInitializeApplication(
    __MCC_curve_color2_component_data.runtime_options,
    __MCC_curve_color2_component_data.runtime_option_count))
    return 0;
  
  return mclRunMain(run_main, argc, argv);
}

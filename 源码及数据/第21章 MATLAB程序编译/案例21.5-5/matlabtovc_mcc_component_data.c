//
// MATLAB Compiler: 4.8 (R2008a)
// Date: Tue Oct 05 09:24:47 2010
// Arguments: "-B" "macro_default" "-m" "-W" "main" "-T" "link:exe" "-W"
// "cpplib:matlabtovc" "-T" "link:lib" "matlabtovc.m" 
//

#include "mclmcrrt.h"

#ifdef __cplusplus
extern "C" {
#endif
extern const unsigned char __MCC_matlabtovc_session_key[] = {
    '0', '4', '7', 'A', '1', '8', '6', '0', '2', '0', '9', '1', 'F', '0', '7',
    '6', 'D', '1', '9', '4', '6', '3', 'A', '0', 'B', '7', 'C', '6', 'F', '3',
    '1', '2', 'F', '6', 'F', '8', 'C', '1', 'C', '1', '3', '3', 'D', 'B', 'C',
    '5', '2', 'B', '0', '0', '3', '9', '2', 'B', '6', '0', 'E', '5', 'B', 'B',
    '5', 'E', '3', 'F', 'F', '5', '8', '6', '0', '5', '4', '7', 'D', 'E', '7',
    '4', '0', '5', '5', '6', '1', '9', '7', 'A', '0', '0', '0', 'D', '3', '3',
    '6', 'C', '5', '1', 'D', '2', '0', '8', 'A', '5', '4', 'B', 'C', 'C', 'C',
    '3', '7', '8', '7', '2', 'C', 'B', '9', '6', 'E', '4', '0', '9', 'A', 'B',
    '3', 'B', '9', '3', 'A', '5', '6', '1', 'C', 'E', '6', 'B', 'A', '4', '8',
    '6', 'A', 'B', '0', '8', '2', 'C', '5', 'C', 'A', '6', '4', 'D', '0', 'A',
    'C', '9', 'A', 'A', '6', 'B', '9', 'F', 'F', 'E', 'C', '9', 'E', '2', '1',
    '5', 'F', '3', 'C', '7', '3', '1', '2', '1', 'C', '6', 'F', '6', '5', '0',
    'A', '1', 'B', 'B', 'E', 'B', 'E', '3', '2', 'E', '6', '1', '6', '1', '0',
    '2', '7', '4', 'A', '8', '1', '3', '8', '8', 'D', '9', 'B', '5', '7', '8',
    '3', '1', '6', '3', 'F', '2', 'C', '5', '4', '9', '5', '1', '5', '9', '3',
    'C', '9', '2', '6', 'A', '9', '6', '3', 'C', 'F', '8', '0', 'F', 'C', 'B',
    '0', '4', '6', '4', 'B', '5', '7', '1', 'F', 'A', 'E', 'F', '3', '4', '9',
    '2', '\0'};

extern const unsigned char __MCC_matlabtovc_public_key[] = {
    '3', '0', '8', '1', '9', 'D', '3', '0', '0', 'D', '0', '6', '0', '9', '2',
    'A', '8', '6', '4', '8', '8', '6', 'F', '7', '0', 'D', '0', '1', '0', '1',
    '0', '1', '0', '5', '0', '0', '0', '3', '8', '1', '8', 'B', '0', '0', '3',
    '0', '8', '1', '8', '7', '0', '2', '8', '1', '8', '1', '0', '0', 'C', '4',
    '9', 'C', 'A', 'C', '3', '4', 'E', 'D', '1', '3', 'A', '5', '2', '0', '6',
    '5', '8', 'F', '6', 'F', '8', 'E', '0', '1', '3', '8', 'C', '4', '3', '1',
    '5', 'B', '4', '3', '1', '5', '2', '7', '7', 'E', 'D', '3', 'F', '7', 'D',
    'A', 'E', '5', '3', '0', '9', '9', 'D', 'B', '0', '8', 'E', 'E', '5', '8',
    '9', 'F', '8', '0', '4', 'D', '4', 'B', '9', '8', '1', '3', '2', '6', 'A',
    '5', '2', 'C', 'C', 'E', '4', '3', '8', '2', 'E', '9', 'F', '2', 'B', '4',
    'D', '0', '8', '5', 'E', 'B', '9', '5', '0', 'C', '7', 'A', 'B', '1', '2',
    'E', 'D', 'E', '2', 'D', '4', '1', '2', '9', '7', '8', '2', '0', 'E', '6',
    '3', '7', '7', 'A', '5', 'F', 'E', 'B', '5', '6', '8', '9', 'D', '4', 'E',
    '6', '0', '3', '2', 'F', '6', '0', 'C', '4', '3', '0', '7', '4', 'A', '0',
    '4', 'C', '2', '6', 'A', 'B', '7', '2', 'F', '5', '4', 'B', '5', '1', 'B',
    'B', '4', '6', '0', '5', '7', '8', '7', '8', '5', 'B', '1', '9', '9', '0',
    '1', '4', '3', '1', '4', 'A', '6', '5', 'F', '0', '9', '0', 'B', '6', '1',
    'F', 'C', '2', '0', '1', '6', '9', '4', '5', '3', 'B', '5', '8', 'F', 'C',
    '8', 'B', 'A', '4', '3', 'E', '6', '7', '7', '6', 'E', 'B', '7', 'E', 'C',
    'D', '3', '1', '7', '8', 'B', '5', '6', 'A', 'B', '0', 'F', 'A', '0', '6',
    'D', 'D', '6', '4', '9', '6', '7', 'C', 'B', '1', '4', '9', 'E', '5', '0',
    '2', '0', '1', '1', '1', '\0'};

static const char * MCC_matlabtovc_matlabpath_data[] = 
  { "matlabtovc/", "toolbox/compiler/deploy/",
    "$TOOLBOXMATLABDIR/general/", "$TOOLBOXMATLABDIR/ops/",
    "$TOOLBOXMATLABDIR/lang/", "$TOOLBOXMATLABDIR/elmat/",
    "$TOOLBOXMATLABDIR/elfun/", "$TOOLBOXMATLABDIR/specfun/",
    "$TOOLBOXMATLABDIR/matfun/", "$TOOLBOXMATLABDIR/datafun/",
    "$TOOLBOXMATLABDIR/polyfun/", "$TOOLBOXMATLABDIR/funfun/",
    "$TOOLBOXMATLABDIR/sparfun/", "$TOOLBOXMATLABDIR/scribe/",
    "$TOOLBOXMATLABDIR/graph2d/", "$TOOLBOXMATLABDIR/graph3d/",
    "$TOOLBOXMATLABDIR/specgraph/", "$TOOLBOXMATLABDIR/graphics/",
    "$TOOLBOXMATLABDIR/uitools/", "$TOOLBOXMATLABDIR/strfun/",
    "$TOOLBOXMATLABDIR/imagesci/", "$TOOLBOXMATLABDIR/iofun/",
    "$TOOLBOXMATLABDIR/audiovideo/", "$TOOLBOXMATLABDIR/timefun/",
    "$TOOLBOXMATLABDIR/datatypes/", "$TOOLBOXMATLABDIR/verctrl/",
    "$TOOLBOXMATLABDIR/codetools/", "$TOOLBOXMATLABDIR/helptools/",
    "$TOOLBOXMATLABDIR/winfun/", "$TOOLBOXMATLABDIR/demos/",
    "$TOOLBOXMATLABDIR/timeseries/", "$TOOLBOXMATLABDIR/hds/",
    "$TOOLBOXMATLABDIR/guide/", "$TOOLBOXMATLABDIR/plottools/",
    "toolbox/local/", "toolbox/shared/dastudio/",
    "$TOOLBOXMATLABDIR/datamanager/", "toolbox/compiler/" };

static const char * MCC_matlabtovc_classpath_data[] = 
  { "" };

static const char * MCC_matlabtovc_libpath_data[] = 
  { "" };

static const char * MCC_matlabtovc_app_opts_data[] = 
  { "" };

static const char * MCC_matlabtovc_run_opts_data[] = 
  { "" };

static const char * MCC_matlabtovc_warning_state_data[] = 
  { "off:MATLAB:dispatcher:nameConflict" };


mclComponentData __MCC_matlabtovc_component_data = { 

  /* Public key data */
  __MCC_matlabtovc_public_key,

  /* Component name */
  "matlabtovc",

  /* Component Root */
  "",

  /* Application key data */
  __MCC_matlabtovc_session_key,

  /* Component's MATLAB Path */
  MCC_matlabtovc_matlabpath_data,

  /* Number of directories in the MATLAB Path */
  38,

  /* Component's Java class path */
  MCC_matlabtovc_classpath_data,
  /* Number of directories in the Java class path */
  0,

  /* Component's load library path (for extra shared libraries) */
  MCC_matlabtovc_libpath_data,
  /* Number of directories in the load library path */
  0,

  /* MCR instance-specific runtime options */
  MCC_matlabtovc_app_opts_data,
  /* Number of MCR instance-specific runtime options */
  0,

  /* MCR global runtime options */
  MCC_matlabtovc_run_opts_data,
  /* Number of MCR global runtime options */
  0,
  
  /* Component preferences directory */
  "matlabtovc_076E270FEB91785D0E94553C0C55AA36",

  /* MCR warning status data */
  MCC_matlabtovc_warning_state_data,
  /* Number of MCR warning status modifiers */
  1,

  /* Path to component - evaluated at runtime */
  NULL

};

#ifdef __cplusplus
}
#endif



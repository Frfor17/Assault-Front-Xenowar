//Easily change which map to build by uncommenting ONE below.

#define FAST_COMPILE_MODE 0 // 0 for full-compilte, more time need, awakes and stuff will be compilling, like true game compile

#ifdef FAST_COMPILE_MODE
#include "progress\map.dm"
#else
//#include "example\map.dm"
#include "torch\map.dm"
#endif

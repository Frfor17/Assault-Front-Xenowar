//Easily change which map to build by uncommenting ONE below.

//#include "example\map.dm"
// #include "torch\map.dm"

#define DEV_MODE 1
#if DEV_MODE
	#include "devmode/dev_setup.dm"
	#include "devmode/dev_turfs.dm"
	#warn DEV MODE — быстрая компиляция!
#else
	#include "torch\map.dm"
#endif

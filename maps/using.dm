//Easily change which map to build by uncommenting ONE below.

#define FAST_COMPILE_MODE 0 // 0 for full-compilte, more time need, awakes and stuff will be compilling, like true game compile

#if FAST_COMPILE_MODE
	#include "progress\map.dm"
	#warn Режим быстрой компиляции активен, он поможет быстрее врубить билд и протестить или сделать, что тебе надо, но не забудь его выключить, когда будешь делать ПР!
	#warn The fast compilation mode is active, it will help you to turn on the build and test or do what you need, but don't forget to turn it off when you do PR!
#else
	//#include "example\map.dm"
	#include "torch\map.dm"
#endif

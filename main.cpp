#include "api.h"
int main (int argc, char * argv[])
{
	i2p::api::InitI2P (argc, argv, "i2pd-reseed");
	i2p::api::StartI2P ();
	sleep (5);	
	i2p::api::StopI2P ();
	i2p::api::TerminateI2P ();
	return 1;
}



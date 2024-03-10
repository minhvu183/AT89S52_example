#include "main.h"

#define button P2_1
#define led P2_0

void main(){
    
    button=1;  //set P2_1 là input
	
    while(1){
		if(button == 0)
            led = 0;
        else
            led = 1;
	}
}
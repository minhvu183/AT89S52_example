#include "main.h"

#define led P2_0

void main(){

	while(1){
		led=0;
        delay_us(5);
        led=1;
        delay_us(5);
	}
}
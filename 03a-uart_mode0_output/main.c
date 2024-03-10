#include "main.h"

void main(){
    SM0 = 0;
    SM1 = 0;    //uart mode 0: thanh ghi dich
    SBUF=0x03;
    while(TI==0);
    TI=0;
    P3_2=0;
    P3_2=1;
    
    
	while(1){
        
        delay(100);
	}
}
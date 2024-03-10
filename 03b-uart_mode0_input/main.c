#include "main.h"

void main(){
    
    SM0 = 0;
    SM1 = 0;    //uart mode 0: thanh ghi dich
    REN = 1;    //cho phep nhan du lieu
        
	while(1){
        P3_2 = 0;
        P3_2 = 1;
        RI = 0;
        while(!RI);
        P2 = SBUF;
        delay(100);
	}
}
#include "main.h"

#define led P2_0

void delay_timer0_mode1(){

    TR0 = 1;    //cho timer 0 chay
    while(!TF0);    //doi co bao tran timer 0
    TR0 = 0;
    TF0 = 0;    //xoa co bao tran timer 0
}

void main(){
    
    TMOD &= 0xf0;    //xoa toan bo bit dieu khien cau timer 0
    TMOD |= 0x02;    //timer 0 hoat dong o che do timer, mode 1 16bit
    TH0 = 0x37;
    TL0 = 0x37;
    
	while(1){
		led=0;
        delay_timer0_mode1();
        led=1;
        delay_timer0_mode1();
	}
}
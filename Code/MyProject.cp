#line 1 "C:/Users/DELL/Desktop/Project Emb/Code/MyProject.c"
int arr[]={0, 1,2,3,4,5,6,7,8,9,16,17,18,19,20,21,22,23,24,25,32,33,34 , 35};
int i = 0;








void manual(){
 while( porta.B1  == 1)
 {
 portb = 0;
 if(porta.B2 == 1){
 if( portd.B0  == 1)
 {
  portd.B4 =1;
  portd.B5 =0;
 for(i = 3; i>=1;i--){
 portb = arr[i];
 delay_ms( 1000 );
 }
 portb=0;
  portd.B4  = 0;
  portd.B3 =1;
  portd.B0  = 0;
  portd.B2  = 1;
 }
 else
 {
  portd.B1 =1;
  portd.B2 =0;
 for(i = 3; i>=1;i--){
 portb = arr[i];
 delay_ms( 1000 );
 }
 portb=0;
  portd.B1 = 0;
  portd.B0 =1;
  portd.B3  = 0;
  portd.B5  = 1;
 }
 while(porta.B2 == 1);
 }
 }
 return;
}
void south_red(){
 for( i = 23; i >=1;i-- ){

  portd.B3 =1;
  portd.B4 =0;
  portd.B5  = 0;
  portd.B0  = 0;
  portd.B1  = 0;
  portd.B2  = 1;
 if( i <= 3)
 {
  portd.B3 =1;
  portd.B4 =0;
  portd.B5  = 0;
  portd.B0  = 0;
  portd.B1  = 1;
  portd.B2  = 0;
 }
 if( porta.B1  == 1)
 {
 manual();
 return;
 }
 portb=arr[i];
 delay_ms( 1000 );

 }
}
void west_red(){
 for(i = 15; i >= 1;i--){

  portd.B3 =0;
  portd.B4 =0;
  portd.B5  = 1;
  portd.B0  = 1;
  portd.B1  = 0;
  portd.B2  = 0;
 if( i <= 3)
 {
  portd.B3 =0;
  portd.B4 =1;
  portd.B5  = 0;
  portd.B0  = 1;
  portd.B1  = 0;
  portd.B2  = 0;
 }
 if( porta.B1  == 1)
 {
 manual();
 return;
 }
 portb=arr[i];
 delay_ms( 1000 );
 }
}
void main() {
 adcon1=7;
 trisa=0;
 trisb=0;
 trisc= 0;
 trisd=0;
 porta=0;
 portb=0;
 portc=0;
 portd=0;
 while(porta.B0 == 0);
 portc= 0xff;
 while(1){
 west_red();
 south_red();
 }
}

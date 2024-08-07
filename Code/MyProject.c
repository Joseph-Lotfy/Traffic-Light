int arr[]={0, 1,2,3,4,5,6,7,8,9,16,17,18,19,20,21,22,23,24,25,32,33,34 , 35};
int i = 0;
#define red_w portd.B0
#define yellow_w portd.B1
#define green_w portd.B2
#define red_s portd.B3
#define yellow_s portd.B4
#define green_s portd.B5
#define man porta.B1
#define wait 1000
void manual(){
     while(man == 1)
     {
       portb = 0;
       if(porta.B2 == 1){
           if(red_w == 1)
           {
               yellow_s=1;
               green_s=0;
               for(i = 3; i>=1;i--){
                     portb = arr[i];
                     delay_ms(wait);
               }
               portb=0;
               yellow_s = 0;
               red_s=1;
               red_w = 0;
               green_w = 1;
           }
           else
           {
               yellow_w=1;
               green_w=0;
               for(i = 3; i>=1;i--){
                     portb = arr[i];
                     delay_ms(wait);
               }
               portb=0;
               yellow_w= 0;
               red_w=1;
               red_s = 0;
               green_s = 1;
           }
           while(porta.B2 == 1);
       }
     }
     return;
}
void south_red(){
      for( i = 23; i >=1;i-- ){

         red_s=1;
         yellow_s=0;
         green_s = 0;
         red_w = 0;
         yellow_w = 0;
         green_w = 1;
         if( i <= 3)
         {
            red_s=1;
           yellow_s=0;
           green_s = 0;
           red_w = 0;
           yellow_w = 1;
           green_w = 0;
         }
           if(man == 1)
           {
                  manual();
                  return;
           }
           portb=arr[i];
           delay_ms(wait);

         }
}
void west_red(){
    for(i = 15; i >= 1;i--){

               red_s=0;
               yellow_s=0;
               green_s = 1;
               red_w = 1;
               yellow_w = 0;
               green_w = 0;
               if( i <= 3)
               {
                   red_s=0;
                   yellow_s=1;
                   green_s = 0;
                   red_w = 1;
                   yellow_w = 0;
                   green_w = 0;
               }
               if(man == 1)
               {
                      manual();
                      return;
               }
               portb=arr[i];
               delay_ms(wait);
         }
}
void main() {
     adcon1=7;
     trisa=1;
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

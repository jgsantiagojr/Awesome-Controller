//  Connection to the BTS7960 board:
//  BTS7960 Pin 1 (RPWM) to Arduino pin 5(PWM)
//  BTS7960 Pin 2 (LPWM) to Arduino pin 6(PWM)
//  BTS7960 Pin 3 (R_EN), 4 (L_EN), 7 (VCC) to Arduino 5V pin
//  BTS7960 Pin 8 (GND) to Arduino GND
//  BTS7960 Pin 5 (R_IS) and 6 (L_IS) not connected*/

//Connection on Teensy
// Teensy Pin 24   PWM1
// Teensy Pin 25   DIR1
// Teensy Pin 28   PWM2
// Teensy Pin 29   DIR2

int PWM_Output = 24; // Arduino PWM output pin 11; connect to IBT-2 pin 1 (RPWM)
int DIR_Output = 25;
////int R_EN = 10;
//int R_IS = A0;
//int r_is = 0;

//int LPWM_Output = 10; // Arduino PWM output pin 6; connect to IBT-2 pin 2 (LPWM)
////int L_EN = 5;
//int L_IS = A2;
//int l_is = 0;

int spot = 0; //value representing PWM Signal being sent
boolean dir = true; //whether spot is inscreasing or decreasing

int upper_limit = 1023;
int lower_limit = 0;

int _step = 1000;
double gain = 1; //absolutely CANNOT be higher than 1

void setup(){
  pinMode(PWM_Output,OUTPUT);
//  pinMode(R_EN, OUTPUT);
  pinMode(DIR_Output, OUTPUT);
//  
//  pinMode(LPWM_Output,OUTPUT);
////  pinMode(L_EN, OUTPUT);
//  pinMode(L_IS, INPUT);

  Serial.begin(9600);

  if(gain > 1){
    gain = 1;
  }
  
}
void loop()
{
  if(spot < upper_limit && dir){
//    ++spot;
      spot += _step;
      if(spot > 1023){ spot = 1023;}
  }
  else if(spot > lower_limit && !dir){
//    --spot; 
      spot -= _step;
      if(spot < 0){ spot = 0;} 
  } 
  else if(spot == upper_limit){
//    --spot;
    spot -= _step;
    dir = false;
  }
  else if(spot == lower_limit){
//    ++spot;
    spot += _step;
    dir = true;
  }

//   digitalWrite(R_EN, HIGH);
//   digitalWrite(L_EN, HIGH);

  // sensor value is in the range 0 to 1023
  // the lower half of it we use for reverse rotation; the upper half for forward rotation 
  if(spot <512){ 
    // reverse rotation
    int reversePWM = -(spot -511)/2;
    analogWrite(PWM_Output,gain*reversePWM);
    digitalWrite(DIR_Output, LOW);
    Serial.println("LEFT");
  }
  else
  {
    // forward rotation
    int forwardPWM =(spot -512)/2;
    digitalWrite(DIR_Output,HIGH);
    analogWrite(PWM_Output,gain*forwardPWM);
    Serial.println("RIGHT");
  }
//
//  l_is = analogRead(L_IS);
//  Serial.print("L_IS: ");
//  Serial.println(l_is);
//  r_is = analogRead(R_IS);
//  Serial.print("R_IS: ");
//  Serial.println(r_is);
  
}

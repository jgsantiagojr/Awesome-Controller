int RPWM_Output = 11; // Arduino PWM output pin 11; connect to IBT-2 pin 1 (RPWM)
int LPWM_Output = 10; // Arduino PWM output pin 6; connect to IBT-2 pin 2 (LPWM)

int spot = 0; //value representing PWM Signal being sent
int state = 0;
boolean dir = true; //whether spot is inscreasing or decreasing 

void setup(){
  pinMode(RPWM_Output,OUTPUT);
//  pinMode(R_EN, OUTPUT);
//  pinMode(R_IS, INPUT);
  
  pinMode(LPWM_Output,OUTPUT);
//  pinMode(L_EN, OUTPUT);
//  pinMode(L_IS, INPUT);

  Serial.begin(9600);
  
}
void loop()
{
  if(state = 0){
    spot = 1023;
    dir = true;
    state = 1;
  }
  else if(state = 1){
    spot = 512;
    if(dir){
      state = 2;  
    }
    else{
      state = 0;
    }
  } 
  else if(state = 2){
    spot = 0;
    dir = false;
    state = 1;
  }

//   digitalWrite(R_EN, HIGH);
//   digitalWrite(L_EN, HIGH);
  spot = 1023;
  // sensor value is in the range 0 to 1023
  // the lower half of it we use for reverse rotation; the upper half for forward rotation 
  if(spot <512){ 
    // reverse rotation
    int reversePWM = -(spot -511)/2;
    analogWrite(LPWM_Output,reversePWM);
    digitalWrite(RPWM_Output, LOW);
    Serial.println("LEFT");
  }
  else
  {
    // forward rotation
    int forwardPWM =(spot -512)/2;
    digitalWrite(LPWM_Output,LOW);
    analogWrite(RPWM_Output,forwardPWM);
    Serial.println("RIGHT");
  }

//  l_is = analogRead(L_IS);
//  Serial.print("L_IS: ");
//  Serial.println(l_is);
//  r_is = analogRead(R_IS);
//  Serial.print("R_IS: ");
//  Serial.println(r_is);
  
}

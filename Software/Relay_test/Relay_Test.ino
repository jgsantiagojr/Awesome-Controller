#include <SparkFun_Qwiic_Relay.h>
#include <Wire.h>

#define RELAY_ADDR 0x6D

Qwiic_Relay quadRelay(RELAY_ADDR);

int state = 1;

void setup() {
  // put your setup code here, to run once:
  Wire.begin();
  Serial.begin(115200);

  Wire.setSDA(18);
  Wire.setSCL(19);

  pinMode(13, LOW);
  
  if(!quadRelay.begin()){
    Serial.println("Check connections to Qwiic Relay");
  } 
  else{
    Serial.println("Ready to flip some switches.");
  }
  Serial.println("Ok buddy, whats next?");
  delay(10);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(state == 1){
    quadRelay.turnRelayOn(1);
    ++state;
  }
  else if(state == 2){
    quadRelay.turnRelayOn(2);
    ++state;
  }
  else if(state == 3){
    quadRelay.turnRelayOn(3);
    ++state;
  }
  else if(state == 4){
    quadRelay.turnRelayOn(4);
    ++state;
  }
  else if(state == 5){
    quadRelay.turnAllRelaysOff();
    ++state;
//    delay(75);
  }
  else if(state == 6){
    quadRelay.turnAllRelaysOn();
    ++state;
//    delay(50);
  }
  else if(state == 7){
    quadRelay.turnAllRelaysOff();
    state = 1;
//    delay(75);
  }
  delay(100);
}

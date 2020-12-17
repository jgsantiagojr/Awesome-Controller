
int LED_pin = 13;
int hbridge1_pin = 24;
int hbridge2_pin = 28;

int state = 0; //state of button
int _status = false; //whether the led is on or off
int delay_time = 500;

void setup() {
  // put your setup code here, to run once:
  pinMode(LED_pin, OUTPUT);
  pinMode(hbridge1_pin, OUTPUT);
  pinMode(hbridge2_pin, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(state == 0){
    _status = true;
    delay_time = 250;
    ++state;
  }else if(state == 1){
    _status = false;
    delay_time = 250;
    ++state;
  }else if(state == 2){
    _status = true;
    delay_time = 250;
    ++state;
  }else if(state == 3){
    _status = false;
    delay_time = 250;
    ++state;
  }else if(state == 4){
    _status = true;
    delay_time = 250;
    ++state;
  }else if(state == 5){
    _status = false;
    delay_time = 750;
    ++state;
  }else if( state == 6){
    _status = false;
    delay_time = 750;
    state = 0;
  }else{
    _status = false;
    delay_time = 750;
    state = 0;
  }
  if(_status == false){
    digitalWrite(LED_pin, LOW);
  } else{
    digitalWrite(LED_pin, HIGH);
  }
  analogWrite(hbridge1_pin, 200);
  analogWrite(hbridge2_pin, 200);
  delay(delay_time);
}

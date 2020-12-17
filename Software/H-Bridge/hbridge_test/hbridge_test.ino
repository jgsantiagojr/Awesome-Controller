//Connection on Teensy
// Teensy Pin 24   PWM1
// Teensy Pin 25   DIR1
// Teensy Pin 28   PWM2
// Teensy Pin 29   DIR2

struct pwm_dir {
  int PWM, DIR;
};
struct change_command {
  int spot;
  boolean dir;
};

typedef struct pwm_dir Hbridge;
typedef struct change_command Step_vel;

//pins on the teensy
int pin_PWM1 = 24;
int pin_PWM2 = 28;

int pin_DIR1 = 25;
int pin_DIR2 = 29;

Step_vel command1 = {600, true};
Step_vel command2 = {400, false};

Hbridge bridge1 = {0, true};
Hbridge bridge2 = {0, false};

Step_vel step_change(Step_vel last_command, int _step = 10, int upper_limit = 1023, int lower_limit = 0);
Hbridge write_PWM(int spot, double _gain = 1);




void setup() {
  pinMode(pin_PWM1, OUTPUT);
  pinMode(pin_PWM2, OUTPUT);

  pinMode(pin_DIR1, OUTPUT);
  pinMode(pin_DIR2, OUTPUT);

  Serial.begin(9600);
}

void loop() {
  //spot represents the soon to be PWM signal (from 0-1023)
  //dir represents whether spot is increasing or decreasing
  command1 = step_change(command1);
  command2 = step_change(command2);

  //converts the spot (0-1023) to PWM(0-255) and DIR(0 or 1) 
  bridge1 = write_PWM(command1.spot);
  bridge2 = write_PWM(command2.spot);

  Serial.println("Bridge1 PWM: " + bridge1.PWM);
  Serial.println("Bridge2 PWM: " + bridge2.PWM);
  
  analogWrite(pin_PWM1, bridge1.PWM);
  analogWrite(pin_PWM2, bridge2.PWM); 

  analogWrite(pin_DIR1, bridge1.DIR);
  analogWrite(pin_DIR2, bridge2.DIR);

  delay(50);
  
}

Step_vel step_change(Step_vel last_command, int _step = 10, int upper_limit = 1023, int lower_limit = 0){ //either steps up or steps down the PWM signal
    
    Step_vel new_command;
    int spot = last_command.spot;
    boolean dir = last_command.dir;
    if(spot < upper_limit && dir){
        spot += _step;
        if(spot > 1023){
          spot = 1023;
        }
    }
    else if(spot > lower_limit && !dir){
        spot -= _step;
        if(spot < 0){
          spot = 0;
        } 
    } 
    else if(spot == upper_limit){
      spot -= _step;
      dir = false;
    }
    else if(spot == lower_limit){
      spot += _step;
      dir = true;
  } else{
    spot = 0;
    dir = true;
  }
  
  new_command.spot = spot;
  new_command.dir = dir;

  return new_command;
}

Hbridge write_PWM(int spot, double _gain = 1){
   Hbridge h;
   
   if(_gain > 1){
      _gain = 1;
   }
   if(spot <512){ 
    // reverse rotation
    h.PWM = _gain*(-(spot -511)/2);
    h.DIR = 255;
    Serial.println("LEFT");
    return h;
  }
  else
  {
    // forward rotation
    h.PWM = _gain*((spot -512)/2);
    h.DIR = 0;
    Serial.println("RIGHT");
    return h;
  }
  
}

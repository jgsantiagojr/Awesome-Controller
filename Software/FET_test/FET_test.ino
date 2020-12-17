
struct pwm_dir {
  int PWM, DIR;
};
struct change_command {
  int spot;
  boolean dir;
};

typedef struct pwm_dir Hbridge;
typedef struct change_command Step_vel;

int pin_MOS1 = 3;
int pin_MOS2 = 4;
int pin_MOS3 = 5;
int pin_MOS4 = 6;

Hbridge MOS1;
Hbridge MOS2;
Hbridge MOS3;
Hbridge MOS4;
Step_vel mos1 = {0, true};
Step_vel mos2 = {0, true};
Step_vel mos3 = {0, true};
Step_vel mos4 = {0, true};


Step_vel step_change(Step_vel last_command, int _step = 5, int upper_limit = 255, int lower_limit = 0);
Hbridge write_PWM(int spot, double _gain = 1);

void setup() {
  pinMode(pin_MOS1, OUTPUT);
  pinMode(pin_MOS2, OUTPUT);
  pinMode(pin_MOS3, OUTPUT);
  pinMode(pin_MOS4, OUTPUT);
}

void loop() {

  //spot represents the soon to be PWM signal (from 0-1023)
  //dir represents whether spot is increasing or decreasing
  mos1 = step_change(mos1);
  mos2 = step_change(mos2);
  mos3 = step_change(mos3);
  mos4 = step_change(mos4);

  //converts the spot (0-1023) to PWM(0-255) and DIR(0 or 1) 
//  MOS1 = write_PWM(mos1.spot);
//  MOS2 = write_PWM(mos2.spot);
//  MOS3 = write_PWM(mos3.spot);
//  MOS4 = write_PWM(mos4.spot);
  
  analogWrite(pin_MOS1, mos1.spot);
  analogWrite(pin_MOS2, mos2.spot);
  analogWrite(pin_MOS3, mos3.spot);
  analogWrite(pin_MOS4, mos4.spot); 

  delay(100);

}

Step_vel step_change(Step_vel last_command, int _step = 5, int upper_limit = 255, int lower_limit = 0){ //either steps up or steps down the PWM signal
    
    Step_vel new_command;
    int spot = last_command.spot;
    boolean dir = last_command.dir;
    if(spot < upper_limit && dir){
        spot += _step;
        if(spot > upper_limit){
          spot = upper_limit;
        }
    }
    else if(spot > lower_limit && !dir){
        spot -= _step;
        if(spot < lower_limit){
          spot = lower_limit;
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
    spot = lower_limit;
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

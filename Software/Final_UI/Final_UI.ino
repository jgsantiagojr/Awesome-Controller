
//Libaries needed for LCD Touchscreen
#include <TeensyUserInterface.h>
#include <font_Arial.h>
#include <font_ArialBold.h>


//Libraries needed for Qwiic Relay Board
#include <SparkFun_Qwiic_Relay.h>
#include <Wire.h>

//I2C Address for Qwiic Relay Board
#define RELAY_ADDR 0x6D

int MOS1 = 3;
int MOS2 = 4;
int MOS3 = 5;
int MOS4 = 6;

int hbPWM1 = 24; //Hbridge 1 PWM PIN
int hbDIR1 = 25; //Hbridge 1 Direction PIN

int hbPWM2 = 28; //Hbridge 2 PWM PIN
int hbDIR2 = 29; //Hbridge 2 Direction PIN


//GPIO pins
int pin14 = 14;
int pin15 = 15;
int pin22 = 22;
int pin23 = 23;

TeensyUserInterface ui; // create the user interface object
Qwiic_Relay quadRelay(RELAY_ADDR);// create quadRelay object 


// ---------------------------------------------------------------------------------
//                                 Setup the hardware
// ---------------------------------------------------------------------------------

void setup() 
{
  Serial.begin(115200);
  Wire.begin();
  Wire.setSDA(18);
  Wire.setSCL(19);

  if(!quadRelay.begin()){
    Serial.println("Check connections to Qwiic Relay");
  } 
  else{
    Serial.println("Ready to flip some switches.");
  }

  pinMode(MOS1, OUTPUT);
  pinMode(MOS2, OUTPUT);
  pinMode(MOS3, OUTPUT);
  pinMode(MOS4, OUTPUT);
  pinMode(hbPWM1, OUTPUT);
  pinMode(hbDIR1, OUTPUT);
  pinMode(hbPWM2, OUTPUT);
  pinMode(hbDIR2, OUTPUT);

  ui.begin(LCD_ORIENTATION_LANDSCAPE_4PIN_RIGHT, Arial_9_Bold);// setup the LCD orientation, the default font and initialize the user interface
  
}

extern MENU_ITEM mainMenu[];
extern MENU_ITEM codeMenu[];
extern MENU_ITEM deviceMenu[];
extern MENU_ITEM hBridgeMenu[];
extern MENU_ITEM mosfetMenu[];
extern MENU_ITEM relayMenu[];



//Starting menu
MENU_ITEM mainMenu[] = {
  {MENU_ITEM_TYPE_MAIN_MENU_HEADER,   "Select Device Type",   MENU_COLUMNS_1,            mainMenu},
  {MENU_ITEM_TYPE_SUB_MENU,            "Code Options",                NULL,         codeMenu},
  {MENU_ITEM_TYPE_SUB_MENU,            "Individual Device Control",           NULL,   deviceMenu},
  {MENU_ITEM_TYPE_END_OF_MENU,        "",                            NULL,                      NULL}
};

//the code menu, with the pre-coded options
MENU_ITEM codeMenu[] = {
  {MENU_ITEM_TYPE_SUB_MENU_HEADER,   "Select Code to run",   MENU_COLUMNS_1,            mainMenu},
  {MENU_ITEM_TYPE_COMMAND,            "Sensor Driven Motor", commandSensorDriven,       NULL},
  {MENU_ITEM_TYPE_END_OF_MENU,        "",                    NULL,                      NULL}
};

// the device menu, select the device to control
MENU_ITEM deviceMenu[] = {
  {MENU_ITEM_TYPE_SUB_MENU_HEADER,   "Select Device Type",   MENU_COLUMNS_1,            mainMenu},
  {MENU_ITEM_TYPE_SUB_MENU,            "H-Bridges",                NULL,         hBridgeMenu},
  {MENU_ITEM_TYPE_SUB_MENU,            "Mosfets",           NULL,   mosfetMenu},
  {MENU_ITEM_TYPE_SUB_MENU,            "Relays",           NULL,        relayMenu},
  {MENU_ITEM_TYPE_END_OF_MENU,        "",                            NULL,                      NULL}
};

//HBridge Selection, go to the individual hbridge controls (PWM and DIRECTION)
MENU_ITEM hBridgeMenu[] = {
  {MENU_ITEM_TYPE_SUB_MENU_HEADER,   "Select H-Bridge",   MENU_COLUMNS_1,            deviceMenu},
  {MENU_ITEM_TYPE_COMMAND,            "H-Bridge 1",                commandSetHBridge1,         NULL},
  {MENU_ITEM_TYPE_COMMAND,            "H-Bridge 2",          commandSetHBridge2,   NULL},
  {MENU_ITEM_TYPE_END_OF_MENU,        "",                            NULL,                      NULL}
};

//MOSFET Selection, go to the individual mosfet controls (PWM)
MENU_ITEM mosfetMenu[] = {
  {MENU_ITEM_TYPE_SUB_MENU_HEADER,    "Select Mosfet",   MENU_COLUMNS_1,  deviceMenu},
  {MENU_ITEM_TYPE_COMMAND,            " MOSFET 1",              commandSetMOS1,           NULL},
  {MENU_ITEM_TYPE_COMMAND,            "MOSFET 2",               commandSetMOS2,           NULL},
  {MENU_ITEM_TYPE_COMMAND,            "MOSFET 3",               commandSetMOS3,           NULL},
  {MENU_ITEM_TYPE_COMMAND,            "MOSFET 4",               commandSetMOS4,           NULL},
  {MENU_ITEM_TYPE_END_OF_MENU,        "",                NULL,            NULL}
};

//RELAY Selection and toggle the different relays individually (ON or OFF)
MENU_ITEM relayMenu[] = {
  {MENU_ITEM_TYPE_SUB_MENU_HEADER,    "Select Relay",   MENU_COLUMNS_1,  deviceMenu},
  {MENU_ITEM_TYPE_TOGGLE,            "1",               menuToggleRelay1Callback,            NULL},
  {MENU_ITEM_TYPE_TOGGLE,            "2",               menuToggleRelay2Callback,            NULL},
  {MENU_ITEM_TYPE_TOGGLE,            "3",               menuToggleRelay3Callback,            NULL},
  {MENU_ITEM_TYPE_TOGGLE,            "4",               menuToggleRelay4Callback,            NULL},
  {MENU_ITEM_TYPE_END_OF_MENU,        "",                NULL,            NULL}
};

//
// display the menu, then execute commands selected by the user
//
void loop() 
{  
  ui.displayAndExecuteMenu(mainMenu);
}

// ---------------------------------------------------------------------------------
//                            PRE_WRITTEN SCRIPTS
// ---------------------------------------------------------------------------------
void commandSensorDriven(void)
{
  
  ui.drawTitleBar("Driving HBridge1 on Pin14 input");
  ui.clearDisplaySpace();

  const int numberBoxAndButtonsHeight = 35;
  
  BUTTON backButton    = {"Back",  ui.displaySpaceCenterX+70, ui.displaySpaceBottomY-25,  120 , numberBoxAndButtonsHeight};
  ui.drawButton(backButton);
  
  pinMode(pin14, INPUT);
  int input = 0;
  
  while(true){
        
    input = analogRead(pin14);
    analogWrite(hbPWM1, input);
    digitalWrite(hbDIR1, true);
    
    if (ui.checkForButtonClicked(backButton)){ //BACK TO SUBMENU
      return;
    }
  }
}

// ---------------------------------------------------------------------------------
//                            H BRIDGE COMMANDS
// ---------------------------------------------------------------------------------
static int hPWM1 = 0;
static boolean hDIR1 = true;
void commandSetHBridge1(void)
{  

  ui.drawTitleBar("H-Bridge 1: Set PWM and Direction");
  ui.clearDisplaySpace();
  
  const int numberBoxWidth = 200;
  const int numberBoxAndButtonsHeight = 35;

  NUMBER_BOX my_NumberBox;
  my_NumberBox.labelText     = "Set PWM";
  my_NumberBox.value         = hPWM1;
  my_NumberBox.minimumValue  = 0;
  my_NumberBox.maximumValue  = 255;
  my_NumberBox.stepAmount    = 2;
  my_NumberBox.centerX       = ui.displaySpaceCenterX;
  my_NumberBox.centerY       = ui.displaySpaceCenterY - 60;
  my_NumberBox.width         = numberBoxWidth;
  my_NumberBox.height        = numberBoxAndButtonsHeight;
  ui.drawNumberBox(my_NumberBox);

  SELECTION_BOX directionSelectionBox;
  directionSelectionBox.labelText = "Set Direction";
  directionSelectionBox.value = hDIR1;
  directionSelectionBox.choice0Text = "Backward";
  directionSelectionBox.choice1Text = "Forward";
  directionSelectionBox.choice2Text = "";
  directionSelectionBox.choice3Text = "";
  directionSelectionBox.centerX = ui.displaySpaceCenterX;
  directionSelectionBox.centerY = ui.displaySpaceCenterY;
  directionSelectionBox.width = 250;
  directionSelectionBox.height = 33;
  ui.drawSelectionBox(directionSelectionBox);
  

  BUTTON highButton      = {"MAX PWM",     ui.displaySpaceCenterX-70, ui.displaySpaceBottomY - 62, 120, numberBoxAndButtonsHeight};
  ui.drawButton(highButton);
  
  BUTTON lowButton      = {"MIN PWM",     ui.displaySpaceCenterX+70, ui.displaySpaceBottomY - 62, 120, numberBoxAndButtonsHeight};
  ui.drawButton(lowButton);

  BUTTON okButton        = {"OK",      ui.displaySpaceCenterX-70, ui.displaySpaceBottomY-25,  120 , numberBoxAndButtonsHeight};
  ui.drawButton(okButton);

  BUTTON backButton    = {"Back",  ui.displaySpaceCenterX+70, ui.displaySpaceBottomY-25,  120 , numberBoxAndButtonsHeight};
  ui.drawButton(backButton);

  while(true)
  {
    ui.getTouchEvents();

    ui.checkForNumberBoxTouched(my_NumberBox);
    ui.checkForSelectionBoxTouched(directionSelectionBox);
 

    if (ui.checkForButtonClicked(highButton)){ //MAX PWM SIGNAL
      my_NumberBox.value = 255;
      ui.drawNumberBox(my_NumberBox);
    }
    if (ui.checkForButtonClicked(lowButton)){ //MIN PWM SIGNAL
      my_NumberBox.value = 0;
      ui.drawNumberBox(my_NumberBox);
    }
    if (ui.checkForButtonClicked(okButton)) //SET SIGNAL
    {
      hPWM1 = my_NumberBox.value;
      hDIR1 = directionSelectionBox.value;
      analogWrite(hbPWM1, hPWM1);
      digitalWrite(hbDIR1, hDIR1);      
    }
    if (ui.checkForButtonClicked(backButton)) //BACK TO SUBMENU
      return;
  }
}

static int hPWM2 = 0;
static boolean hDIR2 = true;
void commandSetHBridge2(void)
{  

  ui.drawTitleBar("H-Bridge 2: Set PWM and Direction");
  ui.clearDisplaySpace();
  
  const int numberBoxWidth = 200;
  const int numberBoxAndButtonsHeight = 35;

  NUMBER_BOX my_NumberBox;
  my_NumberBox.labelText     = "Set PWM";
  my_NumberBox.value         = hPWM2;
  my_NumberBox.minimumValue  = 0;
  my_NumberBox.maximumValue  = 255;
  my_NumberBox.stepAmount    = 2;
  my_NumberBox.centerX       = ui.displaySpaceCenterX;
  my_NumberBox.centerY       = ui.displaySpaceCenterY - 60;
  my_NumberBox.width         = numberBoxWidth;
  my_NumberBox.height        = numberBoxAndButtonsHeight;
  ui.drawNumberBox(my_NumberBox);

  SELECTION_BOX directionSelectionBox;
  directionSelectionBox.labelText = "Set Direction";
  directionSelectionBox.value = hDIR2;
  directionSelectionBox.choice0Text = "Backward";
  directionSelectionBox.choice1Text = "Forward";
  directionSelectionBox.choice2Text = "";
  directionSelectionBox.choice3Text = "";
  directionSelectionBox.centerX = ui.displaySpaceCenterX;
  directionSelectionBox.centerY = ui.displaySpaceCenterY;
  directionSelectionBox.width = 250;
  directionSelectionBox.height = 33;
  ui.drawSelectionBox(directionSelectionBox);
  

  BUTTON highButton      = {"MAX PWM",     ui.displaySpaceCenterX-70, ui.displaySpaceBottomY - 62, 120, numberBoxAndButtonsHeight};
  ui.drawButton(highButton);
  
  BUTTON lowButton      = {"MIN PWM",     ui.displaySpaceCenterX+70, ui.displaySpaceBottomY - 62, 120, numberBoxAndButtonsHeight};
  ui.drawButton(lowButton);

  BUTTON okButton        = {"OK",      ui.displaySpaceCenterX-70, ui.displaySpaceBottomY-25,  120 , numberBoxAndButtonsHeight};
  ui.drawButton(okButton);

  BUTTON backButton    = {"Back",  ui.displaySpaceCenterX+70, ui.displaySpaceBottomY-25,  120 , numberBoxAndButtonsHeight};
  ui.drawButton(backButton);

  while(true)
  {
    ui.getTouchEvents();

    ui.checkForNumberBoxTouched(my_NumberBox);
    ui.checkForSelectionBoxTouched(directionSelectionBox);
 

    if (ui.checkForButtonClicked(highButton)){ //MAX PWM SIGNAL
      my_NumberBox.value = 255;
      ui.drawNumberBox(my_NumberBox);
    }
    if (ui.checkForButtonClicked(lowButton)){ //MIN PWM SIGNAL
      my_NumberBox.value = 0;
      ui.drawNumberBox(my_NumberBox);
    }
    if (ui.checkForButtonClicked(okButton)) //SET SIGNAL
    {
      hPWM2 = my_NumberBox.value;
      hDIR2 = directionSelectionBox.value;
      analogWrite(hbPWM2, hPWM2);
      digitalWrite(hbDIR2, hDIR2);      
    }
    if (ui.checkForButtonClicked(backButton)) //BACK TO SUBMENU
      return;
  }
}

// ---------------------------------------------------------------------------------
//                            MOSFET COMMANDS
// ---------------------------------------------------------------------------------

static int PWM1 = 0;
void commandSetMOS1(void)
{  

  ui.drawTitleBar("MOSFET 1: Set PWM");
  ui.clearDisplaySpace();
  
  const int numberBoxWidth = 200;
  const int numberBoxAndButtonsHeight = 35;

  NUMBER_BOX my_NumberBox;
  my_NumberBox.labelText     = "Set PWM";
  my_NumberBox.value         = PWM1;
  my_NumberBox.minimumValue  = 0;
  my_NumberBox.maximumValue  = 255;
  my_NumberBox.stepAmount    = 2;
  my_NumberBox.centerX       = ui.displaySpaceCenterX;
  my_NumberBox.centerY       = ui.displaySpaceCenterY - 20;
  my_NumberBox.width         = numberBoxWidth;
  my_NumberBox.height        = numberBoxAndButtonsHeight;
  ui.drawNumberBox(my_NumberBox);

  BUTTON highButton      = {"MAX",     ui.displaySpaceCenterX-70, ui.displaySpaceBottomY - 70, 120, numberBoxAndButtonsHeight};
  ui.drawButton(highButton);
  
  BUTTON lowButton      = {"MIN",     ui.displaySpaceCenterX+70, ui.displaySpaceBottomY - 70, 120, numberBoxAndButtonsHeight};
  ui.drawButton(lowButton);

  BUTTON okButton        = {"OK",      ui.displaySpaceCenterX-70, ui.displaySpaceBottomY-35,  120 , numberBoxAndButtonsHeight};
  ui.drawButton(okButton);

  BUTTON backButton    = {"Back",  ui.displaySpaceCenterX+70, ui.displaySpaceBottomY-35,  120 , numberBoxAndButtonsHeight};
  ui.drawButton(backButton);

  while(true)
  {
    ui.getTouchEvents();

    ui.checkForNumberBoxTouched(my_NumberBox);
 

    if (ui.checkForButtonClicked(highButton)){ //MAX PWM SIGNAL
      my_NumberBox.value = 255;
      ui.drawNumberBox(my_NumberBox);
    }
    if (ui.checkForButtonClicked(lowButton)){ //MIN PWM SIGNAL
      my_NumberBox.value = 0;
      ui.drawNumberBox(my_NumberBox);
    }
    if (ui.checkForButtonClicked(okButton)) //SET SIGNAL
    {
      PWM1 = my_NumberBox.value;
      analogWrite(MOS1, PWM1);      
    }
    if (ui.checkForButtonClicked(backButton)) //BACK TO SUBMENU
      return;
  }
}

static int PWM2 = 0;
void commandSetMOS2(void){  

  ui.drawTitleBar("MOSFET 2: Set PWM");
  ui.clearDisplaySpace();
  
  const int numberBoxWidth = 200;
  const int numberBoxAndButtonsHeight = 35;
  
  NUMBER_BOX my_NumberBox;
  my_NumberBox.labelText     = "Set PWM";
  my_NumberBox.value         = PWM2;
  my_NumberBox.minimumValue  = 0;
  my_NumberBox.maximumValue  = 255;
  my_NumberBox.stepAmount    = 2;
  my_NumberBox.centerX       = ui.displaySpaceCenterX;
  my_NumberBox.centerY       = ui.displaySpaceCenterY - 20;
  my_NumberBox.width         = numberBoxWidth;
  my_NumberBox.height        = numberBoxAndButtonsHeight;
  ui.drawNumberBox(my_NumberBox);

  BUTTON highButton      = {"MAX",     ui.displaySpaceCenterX-70, ui.displaySpaceBottomY - 70, 120, numberBoxAndButtonsHeight};
  ui.drawButton(highButton);
  
  BUTTON lowButton      = {"MIN",     ui.displaySpaceCenterX+70, ui.displaySpaceBottomY - 70, 120, numberBoxAndButtonsHeight};
  ui.drawButton(lowButton);
  
  BUTTON okButton        = {"OK",      ui.displaySpaceCenterX-70, ui.displaySpaceBottomY-35,  120 , numberBoxAndButtonsHeight};
  ui.drawButton(okButton);

  BUTTON backButton    = {"Back",  ui.displaySpaceCenterX+70, ui.displaySpaceBottomY-35,  120 , numberBoxAndButtonsHeight};
  ui.drawButton(backButton);

  while(true)
  {
    ui.getTouchEvents();

    ui.checkForNumberBoxTouched(my_NumberBox);

    if (ui.checkForButtonClicked(highButton)){ //MAX PWM SIGNAL
      my_NumberBox.value = 255;
      ui.drawNumberBox(my_NumberBox);
    }
    if (ui.checkForButtonClicked(lowButton)){//MIN PWM SIGNAL
      my_NumberBox.value = 0;
      ui.drawNumberBox(my_NumberBox);
    }
    if (ui.checkForButtonClicked(okButton)){//SET PWM SIGNAL
      PWM2 = my_NumberBox.value;
      analogWrite(MOS2, PWM2);      
    }
    if (ui.checkForButtonClicked(backButton)){ //BACK TO SUBMENU
      return;
    }
  }
}
static int PWM3 = 0;
void commandSetMOS3(void)
{  
  ui.drawTitleBar("MOSFET 3: Set PWM");
  ui.clearDisplaySpace();
  
  const int numberBoxWidth = 200;
  const int numberBoxAndButtonsHeight = 35;

  NUMBER_BOX my_NumberBox;
  my_NumberBox.labelText     = "Set PWM";
  my_NumberBox.value         = PWM3;
  my_NumberBox.minimumValue  = 0;
  my_NumberBox.maximumValue  = 255;
  my_NumberBox.stepAmount    = 2;
  my_NumberBox.centerX       = ui.displaySpaceCenterX;
  my_NumberBox.centerY       = ui.displaySpaceCenterY - 20;
  my_NumberBox.width         = numberBoxWidth;
  my_NumberBox.height        = numberBoxAndButtonsHeight;
  ui.drawNumberBox(my_NumberBox);

  BUTTON highButton      = {"MAX",     ui.displaySpaceCenterX-70, ui.displaySpaceBottomY - 70, 120, numberBoxAndButtonsHeight};
  ui.drawButton(highButton);
  
  BUTTON lowButton      = {"MIN",     ui.displaySpaceCenterX+70, ui.displaySpaceBottomY - 70, 120, numberBoxAndButtonsHeight};
  ui.drawButton(lowButton);
  
  BUTTON okButton        = {"OK",      ui.displaySpaceCenterX-70, ui.displaySpaceBottomY-35,  120 , numberBoxAndButtonsHeight};
  ui.drawButton(okButton);

  BUTTON backButton    = {"Back",  ui.displaySpaceCenterX+70, ui.displaySpaceBottomY-35,  120 , numberBoxAndButtonsHeight};
  ui.drawButton(backButton);


  while(true)
  {
    ui.getTouchEvents();

    ui.checkForNumberBoxTouched(my_NumberBox);
 
    if (ui.checkForButtonClicked(highButton)){ //PWM SIGNAL MAX
      my_NumberBox.value = 255;
      ui.drawNumberBox(my_NumberBox);
    }
    if (ui.checkForButtonClicked(lowButton)){//PWM SIGNAL MIN
      my_NumberBox.value = 0;
      ui.drawNumberBox(my_NumberBox);
    }
    if (ui.checkForButtonClicked(okButton)){//SET SIGNAL
      PWM3 = my_NumberBox.value;
      analogWrite(MOS3, PWM3);      
    }
    if (ui.checkForButtonClicked(backButton)){//BACK TO SUBMENU
      return;
    }
  }
}
static int PWM4 = 0;
void commandSetMOS4(void)
{  
  ui.drawTitleBar("MOSFET 4: Set PWM");
  ui.clearDisplaySpace();
  
  const int numberBoxWidth = 200;
  const int numberBoxAndButtonsHeight = 35;

  NUMBER_BOX my_NumberBox;
  my_NumberBox.labelText     = "Set PWM";
  my_NumberBox.value         = PWM4;
  my_NumberBox.minimumValue  = 0;
  my_NumberBox.maximumValue  = 255;
  my_NumberBox.stepAmount    = 2;
  my_NumberBox.centerX       = ui.displaySpaceCenterX;
  my_NumberBox.centerY       = ui.displaySpaceCenterY - 20;
  my_NumberBox.width         = numberBoxWidth;
  my_NumberBox.height        = numberBoxAndButtonsHeight;
  ui.drawNumberBox(my_NumberBox);

  BUTTON highButton      = {"MAX",     ui.displaySpaceCenterX-70, ui.displaySpaceBottomY - 70, 120, numberBoxAndButtonsHeight};
  ui.drawButton(highButton);
  
  BUTTON lowButton      = {"MIN",     ui.displaySpaceCenterX+70, ui.displaySpaceBottomY - 70, 120, numberBoxAndButtonsHeight};
  ui.drawButton(lowButton);
  
  BUTTON okButton        = {"OK",      ui.displaySpaceCenterX-70, ui.displaySpaceBottomY-35,  120 , numberBoxAndButtonsHeight};
  ui.drawButton(okButton);

  BUTTON backButton    = {"Back",  ui.displaySpaceCenterX+70, ui.displaySpaceBottomY-35,  120 , numberBoxAndButtonsHeight};
  ui.drawButton(backButton);

  while(true)
  {
    ui.getTouchEvents();

    ui.checkForNumberBoxTouched(my_NumberBox);
 
    if (ui.checkForButtonClicked(highButton)){//PWM SIGNAL MAX
      my_NumberBox.value = 255;
      ui.drawNumberBox(my_NumberBox);
    }
    if (ui.checkForButtonClicked(lowButton)){//PWM SIGNAL MIN
      my_NumberBox.value = 0;
      ui.drawNumberBox(my_NumberBox);
    }
    if (ui.checkForButtonClicked(okButton)){//SET PWM SIGNAL
      PWM4 = my_NumberBox.value;
      analogWrite(MOS4, PWM4);      
    }
    if (ui.checkForButtonClicked(backButton)){//BACK TO SUBMENU
      return;
    }
  }
}

// ---------------------------------------------------------------------------------
//                            RELAY TOGGLE
// ---------------------------------------------------------------------------------

static byte relayState1 = false;
void menuToggleRelay1Callback(void){
  if (ui.toggleSelectNextStateFlg){
    relayState1 = !relayState1;
    quadRelay.toggleRelay(1);
  }
  if(relayState1){
    ui.toggleText = "On";
  } else{
    ui.toggleText = "Off";
  }
}
static byte relayState2 = false;
void menuToggleRelay2Callback(void){
  if (ui.toggleSelectNextStateFlg){
    relayState2 = !relayState2;
    quadRelay.toggleRelay(2);
  }
  if(relayState2){
    ui.toggleText = "On";
  } else{
    ui.toggleText = "Off";
  }
}
static byte relayState3 = false;
void menuToggleRelay3Callback(void){
  if (ui.toggleSelectNextStateFlg){
    relayState3 = !relayState3;
    quadRelay.toggleRelay(3);
  }
  if(relayState3){
    ui.toggleText = "On";
  } else{
    ui.toggleText = "Off";
  }
}
static byte relayState4 = false;
void menuToggleRelay4Callback(void){
  if (ui.toggleSelectNextStateFlg){
    relayState4 = !relayState4;
    quadRelay.toggleRelay(4);
  }
  if(relayState4){
    ui.toggleText = "On";
  } else{
    ui.toggleText = "Off";
  }
}

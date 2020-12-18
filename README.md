### Jamie's Awesome Power Controller

![final_product_cropped](https://github.com/jgsantiagojr/Awesome-Controller/blob/main/images/final_product_cropped.jpg))](https://github.com/jgsantiagojr/Awesome-Controller/blob/main/images/demo.mp4 "Demo Video")



Hi I'm Jamie! My Awesome Power Controller is a device that is controlled by a Teensy 4.1 and contains 2 H-Bridges, 4 MOSFET switches, and 4 Relays, as well as 4 General Purpose Input Outputs and a Touchscreen Display.  

The user can choose to either run a pre-written code option or control the different devices independently. An example of a pre-written code option is the Sensor Driven Motor. If the user selects this option, the controller will run a script that sets the PWM signal for H-Bridge 1 to the input from a sensor that is connected to GPIO 14. If the user chooses to control the devices independently then they will be able to individually toggle each of the relays, set the PWM values for each MOSFET switch and set the PWM values and direction for each H-Bridge. 



#### Suppliers

For my PCBs I used: JLCPCB

For my parts I used: Digikey, SparkFun and PJRC



#### Why this project?

This project was originally started for a class I took in the Fall of 2020, Microcontrollers for the Real World.  The point of this class was to be a remote, one-on-one session based class that would teach students to design and build a real-world controller using modular components. I decided that I wanted my project to be something that I could use for future projects and control high power systems with, so I decided to create this generic high power controller. 



#### The Process

##### The Start

The process for this project had a lot of ups and downs. I started off wanting to make everything from scratch and very poorly scoped expectations for what I could do in a semester. But after some initial designs and discussions as to why those designs wouldn't work or what could be better and cheaper, I ended up on a much cleaner path. 

My initial take on the project was that it could be board with a bunch of MOSFETs that the user could configure into different circuits (such as H-bridges and half-bridges) based on what they need to do. It was also supposed to be configurable from the users personal device via Bluetooth in addition to the on-board user interface. However, I quickly learned that this was unnecessarily complex and expensive, and way over-scoped for it to have a reasonable probability of success by the end of the semester. 

So I took a step back. Focused on other things for a day, and came back with a plan. I would use H-bridge modules and then simply have MOSFET switches available as well., in addition to my relay module and touchscreen display. 



##### Prototype 1

![first_boards_cropped](https://github.com/jgsantiagojr/Awesome-Controller/blob/main/images/first_boards_cropped.jpg)

So a week or two after I pivoted to a more module-focused path, I had my first PCBs shipped. After soldering them together, I saw a few obvious problems:

- There was no way to tell if things were working with just the board, so I needed to add indicator LEDs so I could know if the device I was controlling was working without having to plug in a power source or motor/multimeter and so I could easily tell when the board was on. 
- There was no easy way to connect to ground. When I was trying to test that the right pins were outputting the right things there was no easy ground pin to base the measurements off of. So I needed to add a GND pin. 
- There were no GPIO pins. Had to add those. 
- No ON/OFF Switch, it was on whenever I plugged it in. I didn't like this because I wanted the device to be a tool I could keep on the table-top and that I should be able to turn it off without unplugging it. 

There were also a few problems that weren't so obvious:

- I2C line didn't have pull-up resistors. This made it so the teensy couldn't identify the relay board that I was trying to communicate with. 
- I2C line and the SPI lines shared the SCK pin. This was a big error, since SCK is the SPI clock. I discovered this was the problem after soldering a jumper cable between an SCL pin on the teensy and the clock pin on the I2C line and things started working. So I needed to make sure the I2C line was connected to SCL not SCK.

After I fixed all of these problems in the schematic and updated the layout I was able to send out for my second boards. 



##### Prototype 2

![second_boards_cropped](https://github.com/jgsantiagojr/Awesome-Controller/blob/main/images/second_boards_cropped.jpg)

My second boards were also my final boards. At the same time as ordering them I began designing my mechanical packaging.  The boards worked fairly well but still have a few bugs:

- Something is wrong with the power. Every once in a while the LCD display just shows the backlighting and the only way to fix it is by restarting the entire device. 
- The layout of the board is very awkward. I need to re-lay all the components so that the board integrated more seamlessly with its packaging. 

Something that wasn't really a bug but still a pain was the LEDs. They all worked, but since they were tiny and surface mount they took forever to solder on. If there is space to use LEDs that are easier to solder on I need to incorporate them. 

![](https://github.com/jgsantiagojr/Awesome-Controller/blob/main/images/mech_package.jpg)

In terms of the mechanical packaging, my first attempt at a design was fun but didn't take into consideration that I would be 3D printing it, so I had to start from the beginning. For what would be my final package, I chose to have a simple plate and pegs to hold all of the modules secure next to each other in a clean way. 

I am proud to say that my second prototype works well and accomplishes what I wanted it to. I definitely learned a lot of circuit board design, mechanical packaging/3D printing and how to tie them in together.  



#### Parts List

| Part Name                               | Part Number           | Price per unit | Distributer |
| --------------------------------------- | --------------------- | -------------- | ----------- |
| 2 Pack BTS7940 High Power Driver Module | BTN7960               | 13.89          | Amazon      |
| 4 Pack of female 8pos cables            |                       | 8.75           | Amazon      |
| 4 Pin Molex Connector                   | 22232041              | .28            | Digikey     |
| 2 Position Wire to Board Terminal       | 796739-2              | 1.69           | Digikey     |
| 14 Pin Molex Connector                  | 22232141              | 1.56           | Digikey     |
| Power Jack Connector                    | PJ-202A               | .6             | Digikey     |
| .1uF Capacitor                          | C320C104K5R5TA7303    | .22            | Digikey     |
| 100uF Capacitor                         | JMK316ABJ107ML-T      | .56            | Digikey     |
| Level Converter 16DIP                   | CD40109BE             | .55            | Digikey     |
| 8 Position Headers for H-Bridge Module  | PPTC042LFBN-RC        | .15            | Digikey     |
| 24 Position Headers for Teensy          | PPTC241LFBN-RC        | 1.37           | Digikey     |
| 100 Ohm Resistor                        | CFR-25JB-52-100R      | .1             | Digikey     |
| 330 Ohm Resistor                        | CFR-25JB-52-330R      | .1             | Digikey     |
| 10K Ohm Resistor                        | CFR-25JB-52-10K       | .1             | Digikey     |
| 3v3 1A voltage regulator                | NCP1117DT33G          | .44            | Digikey     |
| 4 Pin Dual-Female Wire                  | 1597-1502-ND          | 3.38           | Digikey     |
| 2 Position Headers                      | S7000-ND              | .306           | Digikey     |
| LED BLUE CLEAR CHIP SMD                 | 160-1647-1-ND         | .262           | Digikey     |
| On-Off switch                           | 2449-RA1122DWR-ND     | .98            | Digikey     |
| DC Power Jack                           | 172-4207-ND           | 3.47           | Digikey     |
| LCD Touchscreen                         | DISPLAY_ILI9341_TOUCH | 15             | PJRC        |
| Teensy 4.1                              |                       | 26.95          | PJRC        |
| Qwiic Quad Relay                        | COM-16566             | 29.95          | SparkFun    |
| 60V N-Channel MOSFETs                   | FQP30N06L             | .95            | SparkFun    |


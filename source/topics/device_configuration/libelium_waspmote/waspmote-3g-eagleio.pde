/*  
 *  ------  3G_10 - TCP client connection to eagle.io  -------- 
 *  
 *  This example shows how to create a transparent TCP client connection to eagle.io
 *  
 *  This program is free software: you can redistribute it and/or modify 
 *  it under the terms of the GNU General Public License as published by 
 *  the Free Software Foundation, either version 3 of the License, or 
 *  (at your option) any later version. 
 *  
 *  This program is distributed in the hope that it will be useful, 
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of 
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
 *  GNU General Public License for more details. 
 */

#include <Wasp3G.h>
#include <WaspFrame.h>

char pin[] = "";                    // SIM PIN code
char apn[] = "";                    // APN host
char login[] = "";                  // APN username
char password[] = "";               // APN password
char host[] = "device.eagle.io";    // eagle.io host
uint16_t port = 5566;               // eagle.io port
char waspmoteId[] = "";             // eagle.io waspmote identifier

int8_t answer;

void setup()
{   
    // setup for Serial port over USB:
    USB.ON();
    USB.println(F("USB port started..."));  
    USB.println(F("**************************"));

    // 1. sets operator parameters
    _3G.set_APN(apn, login, password);
    _3G.show_APN();
    USB.println(F("**************************"));
    
    // 2. activates the _3G module:
    answer = _3G.ON(); 
    if ((answer == 1) || (answer == -3))
    {
        USB.println(F("3G module ready..."));

        // 3. sets pin code:
        USB.println(F("Setting PIN code..."));
        
        if (_3G.setPIN( pin ) == 1) 
        {
            USB.println(F("PIN code accepted"));
        }
        else
        {
            USB.println(F("PIN code incorrect"));
        }
    }
    else
    {
        USB.println(F("3G module not ready"));    
    }
}

void loop()
{
    // 4. waits for connection to the network:
    answer = _3G.check(120);
    if (answer == 1)
    {
        USB.println(F("3G module connected to the network..."));

        // 5. configures IP connection
        USB.print(F("Setting connection..."));
        answer = _3G.configureTCP_UDP();
        if (answer == 1)
        {
            USB.println(F("Done"));
            USB.printf("Opening TCP socket %s:%d...", host, port);  
            
            // 6. resolve address and create a TCP socket
            answer = _3G.createSocket(TCP_CLIENT, host, port );
            
            if( answer == 1 )
            {
                USB.println(F("Connected"));

                //************************************************
                //             Send a ASCII frame
                //************************************************

                // create new frame (ASCII)
                frame.createFrame(ASCII,waspmoteId);
                
                // add frame fields
                frame.addSensor(SENSOR_BAT, (uint8_t) PWR.getBatteryLevel() );
                frame.addSensor(SENSOR_RSSI, (uint8_t) _3G.getRSSI() );

                USB.println(F("Sending a frame...")); 
                frame.showFrame();
                
                // 8. sending a frame
                answer = _3G.sendData(frame.buffer, frame.length);
                if( answer == 1 ) 
                {
                    USB.println(F("Done"));
                }
                else if( answer == 0 )
                {
                    USB.println(F("Fail"));
                }
                else 
                {
                    USB.print(F("Fail. Error code: "));
                    USB.println(answer, DEC);
                    USB.print(F("CME or IP error code: "));
                    USB.println(_3G.CME_CMS_code, DEC);
                }

                USB.print(F("Closing TCP socket..."));
                
                // 9. closes socket
                if (_3G.closeSocket() == 1) // Closes socket
                {
                    USB.println(F("Done"));
                }
                else
                {
                    USB.println(F("Fail"));
                }
            }
            else if( answer == -4 )
            {
                USB.print(F("Connection failed. Error code: "));
                USB.println(answer, DEC);
                USB.print(F("CME error code: "));
                USB.println(_3G.CME_CMS_code, DEC);
            }
            else 
            {
                USB.print(F("Connection failed. Error code: "));
                USB.println(answer, DEC);
            }           
        }
        else if( answer < -10 )
        {
            USB.print(F("Configuration failed. Error code: "));
            USB.println(answer, DEC);
            USB.print(F("CME error code: "));
            USB.println(_3G.CME_CMS_code, DEC);
        }
        else 
        {
            USB.print(F("Configuration failed. Error code: "));
            USB.println(answer, DEC);
        }
    }
    else
    {
        USB.println(F("3G module cannot connect to the network"));     
    }

    USB.println(F("Sleeping..."));

    // 12. sleeps 10 seconds
    delay( 10000 );
}

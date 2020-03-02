/*
    --- 4G_11 - TCP client  ---/*
    --- 4G_11 - TCP client  ---

    Explanation: This example shows how to open a TCP client socket
    to the specified server address and port. Besides, the functions
    for sending/receiving data are used.

    Copyright (C) 2016 Libelium Comunicaciones Distribuidas S.L.
    http://www.libelium.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

    Version:           3.0
    Design:            David Gascón
    Implementation:    Alejandro Gállego
*/

#include <Wasp4G.h>
#include <WaspFrame.h>

// APN settings
///////////////////////////////////////
char apn[] = "";
char login[] = "";
char password[] = "";
char *pinCode= "";
///////////////////////////////////////

// SERVER settings
///////////////////////////////////////
char host[] = "device.eagle.io";
uint16_t remote_port = 5566;
///////////////////////////////////////

// define Socket ID (from 'CONNECTION_1' to 'CONNECTION_6')
///////////////////////////////////////
uint8_t connId = Wasp4G::CONNECTION_1;
///////////////////////////////////////
// define the Waspmote ID
char moteID[] = ""; 

// define variables
uint8_t  error;
uint32_t previous;
uint8_t  socketIndex;


void setup()
{
    USB.ON();
    USB.println(F("Start program"));

    // set the Waspmote ID
    frame.setID(moteID);

    //////////////////////////////////////////////////
    // 1. sets operator parameters
    //////////////////////////////////////////////////
    _4G.set_APN(apn, login, password);

    //////////////////////////////////////////////////
    // 2. Show APN settings via USB port
    //////////////////////////////////////////////////
    _4G.show_APN();

    USB.println(F("2. Reading code..."));

    if (_4G.enterPIN(pinCode)== 1) 
    {
        USB.println(F("3. done"));
    }
}




void loop()
{
    //////////////////////////////////////////////////
    // 1. Switch ON
    //////////////////////////////////////////////////
    error = _4G.ON();

    if (error == 0)
    {
        USB.println(F("1. 4G module ready..."));

        ////////////////////////////////////////////////
        // 2. TCP socket
        ////////////////////////////////////////////////
        error = _4G.openSocketClient(connId, Wasp4G::TCP, host, remote_port);

        if (error == 0)
        {
            USB.println(F("2.1. Opening a socket... done!"));
            USB.print(F("IP address:"));
            USB.println(_4G._ip);

            //////////////////////////////////////////////
            // 2.2. Send data
            //////////////////////////////////////////////

            //////////////////////////////////////////////
            // 2.3. Create a frame and send it through the connection
            //////////////////////////////////////////////

            // Create new frame (ASCII)
            frame.createFrame(ASCII);

            //////////////////////////////////////////////
            // 2.4. Add Sensors
            //////////////////////////////////////////////
            frame.addSensor(SENSOR_BAT, (uint8_t) PWR.getBatteryLevel());
            frame.showFrame();

            error = _4G.send(connId, frame.buffer, frame.length);
            if (error == 0)
            {
                USB.println(F("2.3. Sending a frame... done!"));
            }
            else
            {
                USB.print(F("2.3. Error sending a frame. Code: "));
                USB.println(error, DEC);
            }
            else
            {
                USB.print(F("2.1. Error opening socket. Error code: "));
                USB.println(error, DEC);
            }

            //////////////////////////////////////////////
            // 2.5. Close socket
            //////////////////////////////////////////////
            error = _4G.closeSocketClient(connId);

            if (error == 0)
            {
                USB.println(F("2.5. Socket closed OK"));
            }
            else
            {
                USB.print(F("2.5. Error closing socket. Error code: "));
                USB.println(error, DEC);
            }
        }
        else
        {
          // Problem with the communication with the 4G module
          USB.println(F("1. 4G module not started"));
        }
    }

    ////////////////////////////////////////////////
    // 3. Powers off the 4G module
    ////////////////////////////////////////////////
    USB.println(F("3. Switch OFF 4G module"));
    _4G.OFF();

    ////////////////////////////////////////////////
    // 4. Sleep
    ////////////////////////////////////////////////
    USB.println(F("4. Enter deep sleep..."));
    PWR.deepSleep("00:00:00:10", RTC_OFFSET, RTC_ALM1_MODE1, ALL_OFF);

    USB.ON();
    USB.println(F("5. Wake up!!\n\n"));
}

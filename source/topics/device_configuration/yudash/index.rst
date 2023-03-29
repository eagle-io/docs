.. _device-yudash:

YuDash
===============
The `YuDash LYNX <http://www.yudash.com>`_ is a flexible Industrial IoT gateway that can read various industrial sensors/instrumentation over different protocols: Modbus RS485, analog inputs, Modbus TCP/IP, I2C sensors, and many more. Connectivity is via WiFi/Ethernet LAN or 4G/LTE. It supports HTTP POST and MQTT Publish to send data to eagle.io, and has a flexible payload format.

.. only:: not latex

    .. image:: datalogger_yudash.png
        :scale: 30 %

.. only:: latex

    .. image:: datalogger_yudash.png
        :scale: 20 %

| 

Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-file>` and select *File* as the Source Type. Choose *Delimited Text* from the list and click Next.

.. only:: not latex

    .. image:: yudash_wizard_1.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: yudash_wizard_1.jpg

2. Select *Upload via HTTP* as the transport type. A unique URL will be automatically generated per Data Source. Select the *Timezone* and *Ignore Daylight Savings Time* options which match the timezone of the corresponding YuDash device. Note that in the following example, the URL ends with the three words **moon-soda-calf**; these three words will be different for each Data Source that is created.

.. only:: not latex

    .. image:: yudash_wizard_2.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: yudash_wizard_2.jpg

3. Click the *Browse* button and select a text file that contains a sample data format consistent with the data which will be sent by the device. An example data format would be:

::

    2023-02-19 21:20:00,234.5,50.5,3456



.. only:: not latex

    .. image:: yudash_wizard_3.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: yudash_wizard_3.jpg

.. note:: 
    If you do not have a sample text file available, instead select the *Skip* option and click finish on the next screen. A sample will be saved automatically on the initial upload from the device and you will need to open the :ref:`Data Source <node-configuration-datasource-datalogger>` properties dialog and :ref:`configure the series <node-configuration-datasource-file-series>` to create parameters.

4. The Parser configuration screen allows the user to describe the structure and format of the data file so it can be correctly interpretted by the system in subsequent uploads. Refer to :ref:`Text Parser Configuration <text-parser>` for full details. Click Apply to *Configure parameters*.

.. only:: not latex

    .. image:: yudash_wizard_4.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: yudash_wizard_4.jpg


5. Specify the parameter names (and optionally units) for each series/column defined in the Parser configuration. Uncheck any series you do not want to create as parameters. Click Finish to complete the setup. 

.. only:: not latex

    .. image:: yudash_wizard_5.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: yudash_wizard_5.jpg




Device settings
---------------
1. Configure the YuDash HTTP settings to match the unique URL that was previously generated during data source configuration. Because the unique three words in the example URL were **moon-soda-calf**, the HTTP API name is entered as **/source/moon-soda-calf**. The other details will remain the same for every eagle.io Data Source that is added.

.. only:: not latex

    .. image:: yudash_device_1.jpg

    | 

.. only:: latex
    
    | 

    .. image:: yudash_device_1.jpg


2. The Payload Format to send parameters to eagle.io is **TEXT_FORMAT_20**. The timestamp format is **TS_53**. This will be inserted in the payload CSV string.

.. only:: not latex

    .. image:: yudash_device_2.jpg

    | 

.. only:: latex
    
    | 

    .. image:: yudash_device_2.jpg


3. Within payload settings, the YuDash Text Generator Engine is used to generate CSV. The Text Encoder text box is populated to generate required payload.

    a) **##** is a general separator in the Encoder Text.
    b) **yu1_<abc> [name]** is a generic place-holder name to access process values.
    c) Other characters are passed in payload directly.
    d) **yu1_vts** is the placeholder for timestamp in selected format.
    e) **yu1_vnv [variable_name]** is the placeholder for a named variable; **yu1_vnv volt1_in** will place the value of voltage **volt1_in** read by LYNX.

.. only:: not latex

    .. image:: yudash_device_3.jpg

    | 

.. only:: latex
    
    | 

    .. image:: yudash_device_3.jpg


4. Generic LYNX Settings and Features.

    1) The variable names (fields) are filled in Modbus settings of LYNX. This is a generic Modbus/RS485 setting of LYNX. Similar to Modbus/RS485; MODBUS/TCPIP, analog inputs and many other protocols can be used.
    2) In this example, the variable names **volt1_in**, **freq_in** and **kwhr_in** are sent to eagle.io by YuDash LYNX IoT gateway.

.. only:: not latex

    .. image:: yudash_device_4.jpg

    | 

.. only:: latex
    
    | 

    .. image:: yudash_device_4.jpg



5. Select **HTTP** in the *Custom Cloud* section to send data to eagle.io.

.. only:: not latex

    .. image:: yudash_device_5.jpg

    | 

.. only:: latex
    
    | 

    .. image:: yudash_device_5.jpg




6. LYNX has an on-device screen which shows connectivity with eagle.io

.. only:: not latex

    .. image:: yudash_device_6.jpg

    | 

.. only:: latex
    
    | 

    .. image:: yudash_device_6.jpg






.. note:: 
    Use the :ref:`Events <view-events>` view in eagle.io, with the detail level set to *Debug*, for reviewing communication history and diagnosing data source configuration issues.

.. _device-ott-netdl-custom:

OTT netDL
===============
The `OTT <http://ott.com>`_ **netDL 500** and **netDL 1000** data loggers can be configured to send data to eagle.io in a few easy steps.

.. only:: not latex

    .. image:: datalogger_ott_netdl.jpg
        :scale: 60 %

.. only:: latex

    .. image:: datalogger_ott_netdl.jpg
        :scale: 50 %

| 

Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-file>` and select *File* as the Source Type. Choose *Delimited Text* from the list and click Next.

.. only:: not latex

    .. image:: ott_netdl_wizard_1.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_1.jpg

2. Select *Upload data to ftp.eagle.io* as the transport type. A unique *Ftp user* account will be automatically generated per Data Source. You can optionally specify a password to be used by the logger for additional security. Select the timezone of the logger's clock and click Next.

.. only:: not latex

    .. image:: ott_netdl_wizard_2.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_2.jpg

3. Specify *CST* as the *File name match* unless you have configured your logger to output with a different file extension. This will match all incoming files for this Source containing 'CST' in the filename. To continue the setup you will need a sample copy of the logger's output data file(s). 

.. only:: not latex

    .. image:: ott_netdl_wizard_3.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_3.jpg

.. note:: 
    If you do not have a sample available, click the *Skip* checkbox and click finish on the next screen. A sample will be saved automatically on the initial upload from the data logger and you will need to open the :ref:`Data Source <node-configuration-datasource-datalogger>` properties dialog and :ref:`configure the series <node-configuration-datasource-file-series>` to create parameters.

4. The Parser configuration screen allows the user to describe the structure and format of the data file so it can be correctly interpretted by the system in subsequent uploads. Refer to :ref:`Text Parser Configuration <text-parser>` for full details.

.. only:: not latex

    .. image:: ott_netdl_wizard_4a.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_4a.jpg

Set the *Column delimiter* to *Semicolon* unless you have configured your data logger to use a different delimiter character.

Ensure the data in each column matches the expected column data type and format. Validation errors are shown in red. Any columns not required for collection can optionally be *Disabled*.

You will need to use the drop-down menu above the columns to assign the *Record Time* data type to the first column containing part of the record timestamp. Click the configure button to change the *Format* field to use the :ref:`time format<time-format-tokens>` **YYYY MM DD**. 

The record timestamp spans multiple columns by default. Add any additional columns containing part of the timestamp and specify the format. By default you will need to add Column 3 to the list of Joins and change the *Format* field to use the :ref:`time format<time-format-tokens>` **HHmm**. Click Apply and Next.

.. only:: not latex

    .. image:: ott_netdl_wizard_4b.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_4b.jpg

5. Specify the parameter names (and optionally units) for each series/column defined in the Parser configuration. Uncheck any series you do not want to create as parameters. Click Finish to complete the setup. 

.. only:: not latex

    .. image:: ott_netdl_wizard_5.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_5.jpg

.. note:: 
    You can reconfigure the file name match/sample file, parser configuration and parameter assignment from the :ref:`Data Source<node-configuration-datasource-file>` properties dialog after creation.

.. only:: not latex

    |

Device settings
---------------
Use the OTT Data Logger Operating Program to configure the netDL logger for communication with eagle.io. Refer to your OTT netDL `user manual <http://www.ott.com>`_ for connection instructions.

1. Create a new *Server* and specify the *Type* as FTP.

.. only:: not latex

    .. image:: ott_netdl_device_1.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_device_1.jpg

2. Change to the FTP tab.

.. only:: not latex

    .. image:: ott_netdl_device_2.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_device_2.jpg

The following FTP settings should be assigned:

Server address
    ftp.eagle.io
Port
    21
User name
    Use the unique *FTP user* generated during Data Source creation.
Password
    Use the password you assigned during Data Source creation (or leave blank for none).
FTP Path 
    Leave blank

3. Create a new *Transmission* and select *Transmission Internet* as the type.

.. only:: not latex

    .. image:: ott_netdl_device_3.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_device_3.jpg

4. Configure the *Server 1* option to use the newly created Server. ie. eagle.io

.. only:: not latex

    .. image:: ott_netdl_device_4.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_device_4.jpg

5. Change to the *Data Transmission* tab and specify the *Cycle Standard* which sets the frequency of uploads (ie. 5min). Set the *Data format* to *Custom-built* with no compression. 

.. only:: not latex

    .. image:: ott_netdl_device_5.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_device_5.jpg

6. Switch to the *Data transmission 2* tab and enter the appropriate custom-built code which is used to format the data with multiple parameter/channel values per line.

.. only:: not latex

    .. image:: ott_netdl_device_6.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_device_6.jpg


An example format which includes values for channels 10 and 11::
    
    <STATION>;<DATE>;<TSTD><TMIN><FOR 0>;<GB0010;4;1;0;1>;<GB0011;4;1;0;1><ENDFOR><EXT>

This example will output a file with contents similar to::
    
    0000000700;2014 11 18;0300;1.275;18.70 

Description of Custom Built format (extract from OTT support)::

    Control characters start with '^'
    ^M means CR + line feed.
    ^H means backspace (act. Write pointer -1).

    <STATION> Station identifier

    Date/time refers to the build time of the message, normally 5 mins before transmission time.
    <DATE> will be replaced with the actual date in ANSI-format ‘JJJJ MM TT’, e. g. 2000 01 01
    <TSTD x> actual hour; 'x' means a value which will be substracted.
    <TMIN x> actual minute; 'x' means a value which will be substracted.
    <DTIME x> actual time (Date, hour, minute; 'x' will be substracted.

    <FOR from[;to]> 'from' and 'to' refers to the data stored in the logger. 
    0 refers to the last stored value, 1 is the value before and so on. 
    If no 'to' value specified it will be set to 0 (so to the last stored value). 
    The 'from' value has to be higher than 'to' for correct chronological ordering.

    Sensor/Channel output
    <GBnr;s[;factor][;Offset][;Out]>  
    Channel number, transmitted characters per value, factor, offset, output format
    With 'factor' and 'Offset' it is possible to convert degrees Celsius to Fahrenheit.
    The conversion works as following: New value = old value * factor + offset.
    Out: output format
    0 = without decimal point (default)
    1 = measuring value with decimal point
    2 = Included for ZRXP formats (ANSI Date/time value, <cr><lf>)
    
    <ENDFOR> end of FOR-loop; repeat until all data defined in 'for' command is output.

    <EXT> extention of file. CST by default but can be changed to CSV with <EXTcsv>

Refer to your OTT netDL `user manual <http://www.ott.com>`_ or contact `OTT support <http://www.ott.com/en-us/contact/>`_ for help with custom-built transmission code.

.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.

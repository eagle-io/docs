.. _device-datataker:

dataTaker
===============
The `dataTaker <http://datataker.com>`_ **DT80** range of data loggers can be configured to send data to eagle.io in a few easy steps.

.. only:: not latex

    .. image:: datalogger_datataker.jpg
        :scale: 50 %

.. only:: latex

    .. image:: datalogger_datataker.jpg
        :scale: 70 %

| 

Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-file>` and select *File* as the Source Type. Choose *Delimited Text* from the list and click Next.

.. only:: not latex

    .. image:: datataker_wizard_1.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: datataker_wizard_1.png

2. Select *Upload data to ftp.eagle.io* as the transport type. A unique *Ftp user* account will be automatically generated per Data Source. You can optionally specify a password to be used by the logger for additional security. Select the timezone of the logger's clock and click Next.

.. only:: not latex

    .. image:: datataker_wizard_2.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: datataker_wizard_2.png

3. Specify *CSV* as the *File name match*. This will match all incoming files for this Source containing 'CSV' in the filename. To continue the setup you will need a sample copy of the logger's output data file(s). 

.. only:: not latex

    .. image:: datataker_wizard_3.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: datataker_wizard_3.png

.. note:: 
    If you do not have a sample available, click the *Skip* checkbox and click finish on the next screen. A sample will be saved automatically on the initial upload from the data logger and you will need to open the :ref:`Data Source <node-configuration-datasource-datalogger>` properties dialog and :ref:`configure the series <node-configuration-datasource-file-series>` to create parameters.

4. The Parser configuration screen allows the user to describe the structure and format of the data file so it can be correctly interpretted by the system in subsequent uploads. Refer to :ref:`Text Parser Configuration <text-parser>` for full details.

.. only:: not latex

    .. image:: datataker_wizard_4a.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: datataker_wizard_4a.png

If the file contains a header row, set the *Labels row* control to the corresponding row number which will assign default labels for parameter creation.

Ensure the data in each column matches the expected column data type and format. Validation errors are shown in red. Any columns not required for collection can optionally be *Disabled*.

You will need to change the default time format for the *Record Time* column. Click the configure button above the column and change the *Format* field to use the :ref:`time format<time-format-tokens>` **YYYY/MM/DD HH:mm:ss.SSS**. Click Apply and Next.

.. only:: not latex

    .. image:: datataker_wizard_4b.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: datataker_wizard_4b.png

5. Specify the parameter names (and optionally units) for each series/column defined in the Parser configuration. Uncheck any series you do not want to create as parameters. Click Finish to complete the setup. 

.. only:: not latex

    .. image:: datataker_wizard_5.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: datataker_wizard_5.png

.. note:: 
    You can reconfigure the file name match/sample file, parser configuration and parameter assignment from the :ref:`Data Source<node-configuration-datasource-file>` properties dialog after creation.

.. only:: not latex

    |

Device settings
---------------
Use the built-in web interface of the dataTaker to configure the logger for communication with eagle.io. Refer to your dataTaker `user manual <http://www.datataker.com>`_ for connection instructions.

Create a new *FTP logged data* action as part of a schedule.

.. only:: not latex

    .. image:: datataker_device_1.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: datataker_device_1.png
        :scale: 40 %

The following settings should be assigned to the action:

Server
    ftp.eagle.io
Port
    21
Username
    Use the unique *FTP user* generated during Data Source creation.
Password
    Use the password you assigned during Data Source creation (or leave blank for none).
Folder & File
    Leave blank
File format
    CSV
Record type
    Data only
Data range
    New data only
Schedules
    Select all schedules that should be included in the upload.

.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.

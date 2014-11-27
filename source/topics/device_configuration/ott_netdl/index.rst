.. _device-ott-netdl:

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

    .. image:: ott_netdl_wizard_1.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_1.png

2. Select *Upload data to ftp.eagle.io* as the transport type. A unique *Ftp user* account will be automatically generated per Data Source. You can optionally specify a password to be used by the logger for additional security. Select the timezone of the logger's clock and click Next.

.. only:: not latex

    .. image:: ott_netdl_wizard_2.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_2.png

3. Specify *CST* as the *File name match* unless you have configured your logger to output with a different file extension. This will match all incoming files for this Source containing 'CST' in the filename. To continue the setup you will need a sample copy of the logger's output data file(s). 

.. only:: not latex

    .. image:: ott_netdl_wizard_3.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_3.png

.. note:: 
    If you do not have a sample available, click the *Skip* checkbox and click finish on the next screen. A sample will be saved automatically on the initial upload from the data logger and you will need to open the :ref:`Data Source <node-configuration-datasource-datalogger>` properties dialog and :ref:`configure the series <node-configuration-datasource-file-series>` to create parameters.

4. The Parser configuration screen allows the user to describe the structure and format of the data file so it can be correctly interpretted by the system in subsequent uploads. Refer to :ref:`Text Parser Configuration <text-parser>` for full details.

.. only:: not latex

    .. image:: ott_netdl_wizard_4a.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_4a.png

Set the *Column delimiter* to *Semicolon* unless you have configured your data logger to use a different delimiter character.

Ensure the data in each column matches the expected column data type and format. Validation errors are shown in red. Any columns not required for collection can optionally be *Disabled*.

You will need to use the drop-down menu above the columns to assign the *Record Time* data type to the first column containing part of the record timestamp. Click the configure button to change the *Format* field to use the :ref:`time format<time-format-tokens>` **YYYY MM DD**. 

The record timestamp spans multiple columns by default. Add any additional columns containing part of the timestamp and specify the format. By default you will need to add Column 3 to the list of Joins and change the *Format* field to use the :ref:`time format<time-format-tokens>` **HHmm**. Click Apply and Next.

.. only:: not latex

    .. image:: ott_netdl_wizard_4b.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_4b.png

5. Specify the parameter names (and optionally units) for each series/column defined in the Parser configuration. Uncheck any series you do not want to create as parameters. Click Finish to complete the setup. 

.. only:: not latex

    .. image:: ott_netdl_wizard_5.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_5.png

.. note:: 
    You can reconfigure the file name match/sample file, parser configuration and parameter assignment from the :ref:`Data Source<node-configuration-datasource-file>` properties dialog after creation.

.. only:: not latex

    |

Device settings
---------------
Use the OTT Data Logger Operating Program to configure the netDL logger for communication with eagle.io. Refer to your OTT netDL `user manual <http://www.ott.com>`_ for connection instructions.

1. Create a new *Server* and specify the *Type* as FTP.

.. only:: not latex

    .. image:: ott_netdl_device_1.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_device_1.png

The following settings should be assigned to the FTP section:

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

2. Create a new *Transmission* and configure *Server 1* to use the Server item created in the previous step. Specify the data transmission cycle for frequency of uploads. Set the *Data format* to *Custom-built* with no compression.

.. only:: not latex

    .. image:: ott_netdl_device_2.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_device_2.png

The custom-built code is used to format the data with multiple parameter/channel values per line. An example format which includes values for channels 10 and 11::
    
    <STATION>;<DATE>;<TSTD><TMIN><FOR 0>;<GB0010;4;1;0;1>;<GB0011;4;1;0;1><ENDFOR><EXT>

Refer to your OTT netDL `user manual <http://www.ott.com>`_ for help with custom-built transmission code.

.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.

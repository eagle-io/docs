.. _device-spider:

Spider 
===========
The `Halytech <http://halytech.com.au>`_ **Spider SMS** and **microSpider** range of data loggers can be configured to send data to eagle.io in a few easy steps.

.. only:: not latex

    .. image:: datalogger_halytech_spider.jpg
        :scale: 50 %

.. only:: latex

    .. image:: datalogger_halytech_spider.jpg
        :scale: 70 %

| 

Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-file>` and select *File* as the Source Type. Choose *Delimited Text* from the list and click Next.

.. only:: not latex

    .. image:: spider_wizard_1.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: spider_wizard_1.png

2. Select *Upload data to ftp.eagle.io* as the transport type. A unique *Ftp user* account will be automatically generated per Data Source. You can optionally specify a password to be used by the logger for additional security. Select the timezone of the logger's clock and click Next.

.. only:: not latex

    .. image:: spider_wizard_2.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: spider_wizard_2.png

3. Specify *csv* as the *File name match*. This will match all incoming files for this Source containing 'csv' (case-sensitive) in the filename. To continue the setup you will need a sample copy of the logger's output data file(s). 

.. only:: not latex

    .. image:: spider_wizard_3.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: spider_wizard_3.png

.. note:: 
    If you do not have a sample available, click the *Skip* checkbox and click finish on the next screen. A sample will be saved automatically on the initial upload from the data logger and you will need to open the :ref:`Data Source <node-configuration-datasource-datalogger>` properties dialog and :ref:`configure the series <node-configuration-datasource-file-series>` to create parameters.

4. The Parser configuration screen allows the user to describe the structure and format of the data file so it can be correctly interpretted by the system in subsequent uploads. Refer to :ref:`Text Parser Configuration <text-parser>` for full details.

.. only:: not latex

    .. image:: spider_wizard_4a.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: spider_wizard_4a.png

If the file contains a header row, set the *Labels row* control to the corresponding row number which will assign default labels for parameter creation.

Ensure the data in each column matches the expected column data type and format. Validation errors are shown in red. Any columns not required for collection can optionally be *Disabled*.

You will need to change the default time format for the *Record Time* column. Click the configure button above the column and change the *Format* field to match the :ref:`time format<time-format-tokens>` of the data. By default the Spider SMS requires **DD-MMM-YY HH:mm:ss** and the microSpider requires **DD-MMM-YY H:mm:ss**. Click Apply and Next.

.. only:: not latex

    .. image:: spider_wizard_4b.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: spider_wizard_4b.png

5. Specify the parameter names (and optionally units) for each series/column defined in the Parser configuration. Uncheck any series you do not want to create as parameters. Click Finish to complete the setup. 

.. only:: not latex

    .. image:: spider_wizard_5.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: spider_wizard_5.png

.. note:: 
    You can reconfigure the file name match/sample file, parser configuration and parameter assignment from the :ref:`Data Source<node-configuration-datasource-file>` properties dialog after creation.

.. only:: not latex

    |

Device settings
---------------
Use the built-in web interface of the Spider SMS or microSpider to configure the logger for communication with eagle.io. Refer to your `Halytech <http://halytech.com.au>`_ Spider user manual for connection instructions.


The following settings should be assigned:

Server
    ftp.eagle.io
Port
    21
Username
    Use the unique *FTP user* generated during Data Source creation.
Password
    You **must set an FTP password** or the logger will not attempt the connection.
    Use the password you assigned during Data Source creation or use *data* for none.

.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.

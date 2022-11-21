.. _device-ydoc:

YDOC
===============
The `YDOC <http://www.your-data-our-care.com/>`_ **ML-315** range of data loggers can be configured to send data to `eagle.io <https://eagle.io>`_ in a few easy steps.

.. only:: not latex

    .. image:: datalogger_ydoc.jpg
        :scale: 50 %

.. only:: latex

    .. image:: datalogger_ydoc.jpg
        :scale: 40 %

| 

Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-file>` and select *File* as the Source Type. Choose *Delimited Text* from the list and click Next.

.. only:: not latex

    .. image:: ydoc_wizard_1.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ydoc_wizard_1.jpg

2. Select *Upload to ftp.eagle.io* as the transport type. A unique *Ftp user* account will be automatically generated per Data Source. You can optionally specify a password to be used by the logger for additional security. Select the *Timezone* you have configured in the YDOC logger and leave the *Ignore Daylight Savings Time* option checked (unless you have enabled the DST adjustment option in the logger). Click Next to continue.

.. only:: not latex

    .. image:: ydoc_wizard_2.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ydoc_wizard_2.jpg

3. Specify *csv* as the *File name match*. This will match all incoming files for this Source containing 'csv' in the filename. To continue the setup you will need a sample copy of the logger's output data file(s). 

.. only:: not latex

    .. image:: ydoc_wizard_3.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ydoc_wizard_3.jpg

.. note:: 
    If you do not have a sample available, click the *Skip* checkbox and click finish on the next screen. A sample will be saved automatically on the initial upload from the data logger and you will need to open the :ref:`Data Source <node-configuration-datasource-datalogger>` properties dialog and :ref:`configure the series <node-configuration-datasource-file-series>` to create parameters.

4. The Parser configuration screen allows the user to describe the structure and format of the data file so it can be correctly interpretted by the system in subsequent uploads. Refer to :ref:`Text Parser Configuration <text-parser>` for full details.

.. only:: not latex

    .. image:: ydoc_wizard_4a.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ydoc_wizard_4a.jpg

If the file contains header rows, set the *Labels row* control to the corresponding row number (1 by default) which will assign default labels for parameter creation.
You can also specify the *Units row* if it is available (2 by default).

Ensure the data in each column matches the expected column data type and format. Validation errors are shown in red. Any columns not required for collection can optionally be *Disabled*.

You will need to use the drop-down menu above the columns to assign the *Record Time* data type to the first column containing part of the record timestamp. Click the configure button to change the *Format* field to use the :ref:`time format <time-format-tokens>` **YYYY/MM/DD**. 

The record timestamp spans multiple columns. Add any additional columns containing part of the timestamp and specify the format. By default you will need to add 'Column 2' to the list of *Column joins* and change the *Format* field to use the :ref:`time format <time-format-tokens>` **HH:mm:ss**. Click Apply and Next.

.. only:: not latex

    .. image:: ydoc_wizard_4b.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ydoc_wizard_4b.jpg


5. Click next to *Configure parameters*.

.. only:: not latex

    .. image:: ydoc_wizard_5.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ydoc_wizard_5.jpg


6. Specify the parameter names (and optionally units) for each series/column defined in the Parser configuration. Uncheck any series you do not want to create as parameters. Click Finish to complete the setup. 

.. only:: not latex

    .. image:: ydoc_wizard_6.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ydoc_wizard_6.jpg

.. note:: 
    You can reconfigure the file name match/sample file, parser configuration and parameter assignment from the :ref:`Data Source<node-configuration-datasource-file>` properties dialog after creation.

.. only:: not latex

    |

Device settings
---------------
Use the YDOC terminal software to configure the logger for communication with eagle.io. Refer to your YDOC `user manual <http://www.your-data-our-care.com/>`_ for connection instructions.

Select option *[D] FTP output* from the *Configuration setup* menu.

.. only:: not latex

    .. image:: ydoc_device_1.jpg

    | 

.. only:: latex
    
    | 

    .. image:: ydoc_device_1.jpg

The following FTP settings should be assigned:

[2] Send interval
    Specify the frequency of the data uploads to eagle.io.
[4] Data format
    CSV (Option 1)
[5] Server
    ftp.eagle.io
[6] FTP port
    21
[7] FTP mode
    Passive
[8] Username
    Use the unique *FTP user* generated during Data Source creation. eg. cap-golf-wasp
[9] Password
    Use the password you assigned during Data Source creation (or set to 'pass' for none).

You should also ensure the YDOC data logger has been configured with the correct time and timezone offset.

.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.

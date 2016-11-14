.. _device-pointorange3g:

Point Orange 3G
===============

The `Metasphere Point Orange 3G <https://www.metasphere.co.uk/products/battery-powered/point-orange-3g-comms/>`_ RTU outstation can be configured to send data to `eagle.io <https://eagle.io>`_ in a few easy steps.

.. only:: not latex

    .. image:: datalogger_pointorange3g.jpg
        :scale: 50 %

.. only:: latex

    .. image:: datalogger_pointorange3g.jpg
        :scale: 70 %

| 

Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-file>` and select *File* as the Source Type. Choose *Delimited Text* from the list and click Next.

.. only:: not latex

    .. image:: pointorange3g_wizard_1.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: pointorange3g_wizard_1.jpg

2. Select *Upload to ftp.eagle.io* as the transport type. A unique *Ftp user* account will be automatically generated per Data Source. You can optionally specify a password to be used by the logger for additional security. Select the timezone of the logger's clock and click Next.

.. only:: not latex

    .. image:: pointorange3g_wizard_2.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: pointorange3g_wizard_2.jpg

3. Specify *.csv* as the *File name match*. This will match all incoming files for this Source containing '.csv' in the filename. To continue the setup you will need a sample copy of the logger's output data file(s). 

.. only:: not latex

    .. image:: pointorange3g_wizard_3.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: pointorange3g_wizard_3.jpg

.. note:: 
    If you do not have a sample available, click the *Skip* checkbox and click finish on the next screen. A sample will be saved automatically on the initial upload from the data logger and you will need to open the :ref:`Data Source <node-configuration-datasource-datalogger>` properties dialog and :ref:`configure the series <node-configuration-datasource-file-series>` to create parameters.

4. The Parser configuration screen allows the user to describe the structure and format of the data file so it can be correctly interpretted by the system in subsequent uploads. Refer to :ref:`Text Parser Configuration <text-parser>` for full details.

.. only:: not latex

    .. image:: pointorange3g_wizard_4a.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: pointorange3g_wizard_4a.jpg

If the file contains a header row, set the *Labels row* control to the corresponding row number which will assign default labels for parameter creation.

Ensure the data in each column matches the expected column data type and format. Validation errors are shown in red. Any columns not required for collection can optionally be *Disabled*.

You will need to change the default time format for the *Record Time* column. Click the configure button above the column and change the *Format* field to use the :ref:`time format<time-format-tokens>` **YYYY/MM/DD HH:mm:ss**. Click Apply and Next.

.. only:: not latex

    .. image:: pointorange3g_wizard_4b.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: pointorange3g_wizard_4b.jpg

5. Click next to proceed to parameter assignment.

.. only:: not latex

    .. image:: pointorange3g_wizard_5.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: pointorange3g_wizard_5.jpg

6. Specify the parameter names (and optionally units) for each series/column defined in the Parser configuration. Uncheck any series you do not want to create as parameters. Click Finish to complete the setup. 

.. only:: not latex

    .. image:: pointorange3g_wizard_6.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: pointorange3g_wizard_6.jpg

.. note:: 
    You can reconfigure the file name match/sample file, parser configuration and parameter assignment from the :ref:`Data Source<node-configuration-datasource-file>` properties dialog after creation.

.. only:: not latex

    |

Device settings
---------------
Use the Metasphere Poco+ application software to configure the logger for communication with eagle.io. Refer to your Point Orange 3G `user manual <https://www.metasphere.co.uk>`_ for connection instructions.

.. only:: not latex

    .. image:: pointorange3g_device_1.jpg
        :scale: 70 %

    | 

.. only:: latex
    
    | 

    .. image:: pointorange3g_device_1.jpg
        :scale: 50 %

The following settings should be assigned in the **FTP** section:

Username
    Use the unique *FTP user* generated during Data Source creation.
Password
    Use the password you assigned during Data Source creation (or leave blank for none).
CSV Location
    /
Protocol
    FTP

.. only:: not latex

    .. image:: pointorange3g_device_2.jpg
        :scale: 70 %

    | 

.. only:: latex
    
    | 

    .. image:: pointorange3g_device_2.jpg
        :scale: 50 %

The following settings should be assigned in the **Comms** section:

IP Address
    54.252.235.152:21

You should configure the communication frequency and APN settings as required.

.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.

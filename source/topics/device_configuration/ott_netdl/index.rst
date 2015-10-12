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

1. Create a :ref:`Data Source<node-configuration-datasource-file>` and select *Data logger* as the Source Type. Choose *OTT netDL* from the list and click Next.

.. only:: not latex

    .. image:: ott_netdl_wizard_1.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_1.jpg

2. Select the data logger Model and specify the number of channels/sensors configured in the logger (this can be changed later). Click Next.

.. only:: not latex

    .. image:: ott_netdl_wizard_2.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_2.jpg

2. Select *Upload data to ftp.eagle.io* as the transport type. A unique *Ftp user* account will be automatically generated per Data Source. You can optionally specify a password to be used by the logger for additional security. Select the timezone of the logger's clock and click Next.

.. only:: not latex

    .. image:: ott_netdl_wizard_3.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_3.jpg


4. Specify the channel Id and name of each parameter (with optional units) you would like to collect from the logger. Uncheck any series you do not want to create as parameters. In the example below, the logger will have channel '0810' configured as 'U Supply'. Click Finish to complete the setup.

.. only:: not latex

    .. image:: ott_netdl_wizard_4.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_wizard_4.jpg

.. note:: 
    You can reconfigure the series and parameter assignment from the :ref:`Data Source<node-configuration-datasource-datalogger>` properties dialog after creation.

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

5. Change to the *Data Transmission* tab and specify the *Cycle Standard* which sets the frequency of uploads (eg. 15min). Set the *Data format* to *CSV* with no compression. Select *Comma* as the *Field separator* and *Period* (.) as the *Decimal separator*.

.. only:: not latex

    .. image:: ott_netdl_device_5.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ott_netdl_device_5.jpg

6. Tick all the channels you would like to transmit to eagle.io (or select the *All channels* option) and save the configuration to the data logger.

.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.

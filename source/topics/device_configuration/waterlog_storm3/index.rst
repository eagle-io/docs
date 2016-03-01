.. _device-waterlog-storm3:

WaterLog
==========
The `WaterLog <http://www.waterlog.com/>`_ **Storm 3** series data logger can be configured to send data to `eagle.io <https://eagle.io>`_ in a few easy steps.

.. only:: not latex

    .. image:: datalogger_waterlog_storm3.jpg
        :scale: 50 %

.. only:: latex

    .. image:: datalogger_waterlog_storm3.jpg
        :scale: 40 %

| 

Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-datalogger>` and select *Data logger* as the Source Type. Choose *WaterLog* from the list and click Next.

.. only:: not latex

    .. image:: waterlog_storm3_wizard_1.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: waterlog_storm3_wizard_1.jpg

2. Select the data logger *Model* and specify the number of sensors connected (this can be changed later). Click Next.

.. only:: not latex

    .. image:: waterlog_storm3_wizard_2.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: waterlog_storm3_wizard_2.jpg

3. Select *TCP File Server* as the transport type and a *Site Id* will be automatically generated. Select the timezone of the logger's clock and click Next.

.. only:: not latex

    .. image:: waterlog_storm3_wizard_3.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: waterlog_storm3_wizard_3.jpg

4. Specify the parameter names for each connected sensor and optionally assign units. Click Finish to complete the setup. 

.. only:: not latex

    .. image:: waterlog_storm3_wizard_4.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: waterlog_storm3_wizard_4.jpg

.. note:: 
    You can reconfigure the number of sensors, ordering of sensors and Site Id from the :ref:`Data Source<node-configuration-datasource-datalogger>` properties dialog after creation.

.. only:: not latex

    |

Device settings
---------------
Use the WaterLog Storm3 configuration software to setup your Storm3 data logger for communication with eagle.io.

Overview
~~~~~~~~
The *System Overview* section accessible from the *Home* menu requires the following settings to be applied:

Site ID
    Use the unique *Site Id* identification code generated during Data Source creation.

System Date/Time
    Ensure the correct local time is set in the device. You should set the timezone of the Data Source to match your local timezone.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: waterlog_storm3_device_1.jpg
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: waterlog_storm3_device_1.jpg


.. only:: not latex

    |
    
Storm Central Setup
~~~~~~~~~~~~~~~~~~~
The *Storm Central Setup* section accessible from the *Outputs* menu requires the following settings to be applied:

Server Type
    Custom

Server Address
    device.eagle.io

Server Port Number
    32213

Data Format
    Comma-separated

Date/Time Format
    Epoch

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: waterlog_storm3_device_2.jpg
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: waterlog_storm3_device_2.jpg

.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.
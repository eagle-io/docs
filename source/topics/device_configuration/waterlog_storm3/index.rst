.. _device-waterlog_storm3:

WaterLog Storm3
===============
The WaterLog Storm3 data logger can be configured to send data to eagle.io in a few easy steps.

Source configuration
--------------------
You need to configure your Data Source to use the TCP File Server transport. See :ref:`configuring a Data Source <node-configuration-datasource-datalogger>` for full details.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: waterlog_storm3_connection.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: waterlog_storm3_connection.png


Device settings
---------------
Use the WaterLog Storm3 configuration software to setup your Storm3 data logger for communication with eagle.io.

Overview
~~~~~~~~
The *System Overview* section accessible from the *Home* menu requires the following settings to be applied:

Site ID
    Enter the unique identification code generated during Data Source creation.

System Date/Time
    Ensure the correct local time is set in the device. You should set the timezone of the Data Source to match your local timezone.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: waterlog_storm3_overview.png
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: waterlog_storm3_overview.png


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

    .. image:: waterlog_storm3_outputs.png
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: waterlog_storm3_outputs.png


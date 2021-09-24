.. _worldsensing-loadsensing:

Worldsensing
============
`Loadsensing <https://www.worldsensing.com/loadsensing/>`_ is the IoT remote monitoring solution by `Worldsensing <https://www.worldsensing.com>`_, a global industrial IoT leader and expert in monitoring the geotechnical, geospatial and structural performance of civil infrastructures. The monitoring solution can be connected with `eagle.io <https://eagle.io>`_ through the Worldsensing software called `Connectivity Management Tool (CMT) <https://www.worldsensing.com/connectivity-connectivitymanagement/>`_ in a few easy steps.

.. only:: not latex

    .. image:: worldsensing_header.png
        :scale: 25 %

.. only:: latex

    .. image:: worldsensing_header.png
        :scale: 50 %


Introduction
------------

`CMT (Connectivity Management Tool) <https://www.worldsensing.com/connectivity-connectivitymanagement/>`_  is part of the Worldsensing connectivity portfolio. It allows integrating data collected through Worldsensing monitoring networks with 3rd party systems. The CMT software features FTP push of data to 3rd party systems, such as eagle.io.


Setting up CMT with eagle.io
++++++++++++++++++++++++++++

Follow the steps below to configure CMT to send data to an eagle.io data source. Use a similar process to connect CMT Edge to eagle.io.


3 Steps for an easy setup:
++++++++++++++++++++++++++

1. Configure a new eagle.io data source with the **Upload data to ftp.eagle.io** transport
2. Configure CMT with FTP client details
3. Use the first file sent as sample data to finalize configuring the data source parser, and create parameters

| 
| 

1. Configure an eagle.io data source
------------------------------------

1. Create a :ref:`data source<node-configuration-datasource-file>` and select *File* as the Source Type. Choose *Delimited Text* from the list and click **Next**.

.. only:: not latex

    .. image:: loadsensing_wizard_1.png
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_wizard_1.png

| 
| 

2. Select *Upload to ftp.eagle.io* as the transport type. A unique *Username* will be automatically generated per data source; for this example, it is ``spoon-table-node``. A password should also be entered for additional security. Select the desired timezone (in this example it is **UTC** to match the timezone of the data file) and click **Next**.

.. only:: not latex

    .. image:: loadsensing_wizard_2.png
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_wizard_2.png

| 
| 

3. Check the box labled **Skip or Reset sample file and retrieve on next acquisition**. Enter a file match of ``.csv`` and click **Apply**.

.. only:: not latex

    .. image:: loadsensing_wizard_3.png
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_wizard_3.png

| 
| 

3. Click **Next**. 

.. only:: not latex

    .. image:: loadsensing_wizard_4.png
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_wizard_4.png

| 
| 

4. Click **Finish**.

.. only:: not latex

    .. image:: loadsensing_wizard_5.png
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_wizard_5.png

| 
| 

2. Configure CMT
----------------


1. After logging into the CMT, select *System Configuration/Configuration*, then *FTP Client*.


CMT Cloud:

.. only:: not latex

    .. image:: loadsensing_client_1.jpg
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_client_1.jpg


CMT Edge:

.. only:: not latex

    .. image:: loadsensing_client_1a.png
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_client_1a.png


| 
| 

2. Check the **Enable FTP** box and enter the following FTP client details:


Hostname
    ``ftp.eagle.io``
Port number
    ``21``
Username
    Use the unique FTP username generated during creation of the data source. In this example, it is ``spoon-table-node``. Every data source will have a different unique username.
Password
    Use the password you entered during creation of the data source.
Protocol
    **FTP**
FTP mode
    **Passive**
Output
    **Create unique file name at every upload**

| 
| 


.. only:: not latex

    .. image:: loadsensing_client_2.jpg
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_client_2.jpg

| 
| 

3. Click a single box corresponding to the data you want to send, for example **LS-G6-INC15 data**, and enter a relative path of ``./``:

.. only:: not latex

    .. image:: loadsensing_client_3.jpg
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_client_3.jpg

| 
| 

4. Click **Save and test**

.. only:: not latex

    .. image:: loadsensing_client_4.jpg
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_client_4.jpg


| 
| 

3. Finalize the configuration of the data source parser
-------------------------------------------------------

Once a file has been sent from the CMT software to eagle.io via FTP, this file can be used to finalize the configuration of the data source that was created previously.

1. In eagle.io, check the debug :ref:`Events <view-events>` view of the data source to ensure that at least one file has been received. The event will look like this:

.. only:: not latex

    .. image:: loadsensing_config_1.png
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_config_1.png

| 
| 

2. In the :ref:`data source<node-configuration-datasource-file>` properties dialog, go to the **Series** tab and choose the **Configure series** option for the **.csv** data file. If this option is greyed-out, that means a file has not yet been received (refer to the previous step):

.. only:: not latex

    .. image:: loadsensing_config_2.png
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_config_2.png

| 
| 

3. Once a file has been received, the **Configure series** option for the **.csv** data file will be avilable:

.. only:: not latex

    .. image:: loadsensing_config_3.png
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_config_3.png

| 
| 

4. The Parser configuration screen allows the user to describe the structure and format of the data file so it can be correctly interpreted by the system in subsequent uploads. Refer to :ref:`Text Parser Configuration <text-parser>` for full details. The data file contains a header row, so set the *Labels row* control to row 10 which will assign default labels for parameter creation (that is the purple line in the example below). Ensure the data in each column matches the expected column data type and format. Validation errors are shown in red. Any columns not required for collection can optionally be *Disabled*. The default time format for the *Record Time* column is already set to **YYYY-MM-DD HH:mm:ss** and should not need to change. After appropriate configuration, the parser should look now look like this; click **Apply** to continue:


.. only:: not latex

    .. image:: loadsensing_config_4.png
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_config_4.png

| 
| 

5. Specify the parameter names (and optionally units) for each series/column defined in the Parser configuration. Uncheck any series you do not want to create as parameters. Click **Save** to complete the configuration and create the parameters.

.. only:: not latex

    .. image:: loadsensing_config_5.png
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_config_5.png

| 
| 

6. The parameters have now been created; when data is next sent via FTP, the values will appear in the Parameters view:

.. only:: not latex

    .. image:: loadsensing_config_6.png
        :scale: 80 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_config_6.png


| 
| 

.. note:: 
    You can reconfigure the file name match/sample file, parser configuration and parameter assignment from the :ref:`data source<node-configuration-datasource-file>` properties dialog after creation.

.. only:: not latex

    |



.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.


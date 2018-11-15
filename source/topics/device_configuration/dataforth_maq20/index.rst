.. _device-maq20:

Dataforth MAQ®20
================
The `Dataforth MAQ®20 <https://www.dataforth.com/maq20.aspx>`_ Industrial Data Acquisition and Control System can be connected with `eagle.io <https://eagle.io>`_ in a few easy steps.

.. only:: not latex

    .. image:: maq20_family.jpg
        :scale: 100 %

.. only:: latex

    .. image:: maq20_family.jpg
        :scale: 35 %

| 

Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-file>` and select *File* as the Source Type. Choose *Delimited Text* from the list and click Next.

.. only:: not latex

    .. image:: maq20_wizard_1.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: maq20_wizard_1.png

2. Select *Download from FTP site* as the transport type. Configure the settings as defined in your FTP settings for the MAQ20 system. *FTP Host* must contain a valid public hostname or public IP thatcan be used to access the FTP server.  Set Collection interval, Initial collection and Timezone to desired values, then click Next.

.. note:: 
    If desired, please reference the `MA1040 MAQ20-COM Module Hardware User Manual <https://www.dataforth.com/FileDownload.ashx?docid=51>`_ for more information about FTP configuration.


.. only:: not latex

    .. image:: maq20_wizard_2.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: maq20_wizard_2.png

3. If FTP settings are configured correctly, you will see a directory of files that exist in the system’s SD card. Choose the filename that corresponds to the file you have configured for the SD card logger for the system, then click Apply.



.. only:: not latex

    .. image:: maq20_wizard_3.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: maq20_wizard_3.png


4. The Parser configuration screen allows the user to describe the structure and format of the sample data file so it can be correctly interpreted by the system during subsequent data collection. Refer to :ref:`Text Parser Configuration <text-parser>` for full details. First you will need to change the labels row to be 1. 

.. only:: not latex

    .. image:: maq20_wizard_4.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: maq20_wizard_4.png


You will need to set the correct :ref:`time format <time-format-tokens>` by clicking the gear icon in Column 1 (Record time).


.. only:: not latex

    .. image:: maq20_wizard_5.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: maq20_wizard_5.png


Set the time format to be **MM/DD/YY HH:mm:ss.SSS** then click Close, Apply, and Next.



.. only:: not latex

    .. image:: maq20_wizard_6.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: maq20_wizard_6.png





5. Specify the parameter names (and optionally units) for each series/column defined in the Parser configuration. Uncheck any series you do not want to create as parameters. Click Finish to complete the setup. 



.. only:: not latex

    .. image:: maq20_wizard_7.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: maq20_wizard_7.png



.. note:: 
    You can reconfigure the collection schedule, file name match/sample file, parser configuration, parameter assignment, and other Data Source settings from the :ref:`Data Source<node-configuration-datasource-file>` properties dialog after creation.




.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.

.. _worldsensing-loadsensing:

Loadsensing
===========
The `Loadsensing <https://www.worldsensing.com/loadsensing/>`_ system from `Worldsensing <https://www.worldsensing.com>`_ is a global leader in IoT-based monitoring, and can be connected with `eagle.io <https://eagle.io>`_ in a few easy steps.

.. only:: not latex

    .. image:: worldsensing_logo_small.png
        :scale: 100 %

.. only:: latex

    .. image:: worldsensing_logo_small.png
        :scale: 50 %

.. only:: not latex

    .. image:: loadsensing_device.jpg
        :scale: 100 %

.. only:: latex

    .. image:: loadsensing_device.jpg
        :scale: 50 %

| 

Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-file>` and select *File* as the Source Type. Choose *Delimited Text* from the list and click Next.

.. only:: not latex

    .. image:: loadsensing_wizard_1.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_wizard_1.jpg

2. Select *Upload data to ftp.eagle.io* as the transport type. A unique *Ftp user* account will be automatically generated per Data Source. You can optionally specify a password to be used for additional security. Select the desired timezone and click Next.

.. only:: not latex

    .. image:: loadsensing_wizard_2.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_wizard_2.jpg

3. Specify *CSV* as the *File name match*. This will match all incoming files for this Source containing 'CSV' in the filename. To continue the setup you will need a sample copy of the data file(s). 

.. only:: not latex

    .. image:: loadsensing_wizard_3.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_wizard_3.jpg

.. note:: 
    If you do not have a sample available, click the *Skip* checkbox and click finish on the next screen. A sample will be saved automatically during the initial upload, and you will need to open the :ref:`Data Source <node-configuration-datasource-datalogger>` properties dialog and :ref:`configure the series <node-configuration-datasource-file-series>` to create parameters.

4. The Parser configuration screen allows the user to describe the structure and format of the data file so it can be correctly interpretted by the system in subsequent uploads. Refer to :ref:`Text Parser Configuration <text-parser>` for full details.

.. only:: not latex

    .. image:: loadsensing_wizard_4a.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_wizard_4a.jpg

If the file contains a header row, set the *Labels row* control to the corresponding row number which will assign default labels for parameter creation.

Ensure the data in each column matches the expected column data type and format. Validation errors are shown in red. Any columns not required for collection can optionally be *Disabled*.

You will need to change the default time format for the *Record Time* column. Click the configure button above the column and change the *Format* field to use the :ref:`time format<time-format-tokens>` **YYYY/MM/DD HH:mm:ss.SSS**. Click Apply and Next.

.. only:: not latex

    .. image:: loadsensing_wizard_4b.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_wizard_4b.jpg

5. Specify the parameter names (and optionally units) for each series/column defined in the Parser configuration. Uncheck any series you do not want to create as parameters. Click Finish to complete the setup. 

.. only:: not latex

    .. image:: loadsensing_wizard_5.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: loadsensing_wizard_5.jpg

.. note:: 
    You can reconfigure the file name match/sample file, parser configuration and parameter assignment from the :ref:`Data Source<node-configuration-datasource-file>` properties dialog after creation.

.. only:: not latex

    |

Loadsensing settings
--------------------
Refer to your loadsensing `user manual <http://www.loadsensing.com>`_ for connection instructions.


.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.

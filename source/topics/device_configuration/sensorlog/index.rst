.. _device-sensorlog:

SensorLog
===============
The `SensorLog <https://itunes.apple.com/au/app/sensorlog/id388014573/>`_ iOS 8.0+ App for iPhone and iPad can be configured to send data to eagle.io for demonstration purposes in a few easy steps.

.. only:: not latex

    .. image:: iphone_sensorlog.jpg
        :scale: 50 %

.. only:: latex

    .. image:: iphone_sensorlog.jpg
        :scale: 40 %

| 

Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-file>` and select *Data logger* as the Source Type. Choose *SensorLog* from the list and click Next.

.. only:: not latex

    .. image:: sensorlog_wizard_1.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: sensorlog_wizard_1.jpg

2. Download the SensorLog App to your iPhone or iPad from the `App Store <https://itunes.apple.com/au/app/sensorlog/id388014573/>`_ and click Next.

.. only:: not latex

    .. image:: sensorlog_wizard_2.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: sensorlog_wizard_2.jpg

3. The Device Id will be automatically generated. Select the Timezone of your device and click Next to continue.

.. only:: not latex

    .. image:: sensorlog_wizard_3.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: sensorlog_wizard_3.jpg

4. Click Finish to complete the setup. Parameters will be automatically created on initial data acquisition. 

.. only:: not latex

    .. image:: sensorlog_wizard_4.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: sensorlog_wizard_4.jpg

.. note:: 
    You can enable or disable parameters for collection from the :ref:`Data Source<node-configuration-datasource-file>` properties dialog after creation.

.. only:: not latex

    |

Device settings
---------------

Launch the SensorLog App and open the *Configuration* section.

.. only:: not latex

    .. image:: sensorlog_device.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: sensorlog_device.jpg

The following settings should be assigned:

HTTP upload
    Enabled. Select GET or POST
upload
    Set the upload frequency from 5s - 60s
URL
    http://device.eagle.io/sensorlog
device ID
    Use the unique *Device Id* generated during Data Source creation. eg. nepal-dry-bead
csv seperator
    Comma ','
Sensors
    Enabled the sensors you wish to log. The selected sensors will be automatically created as parameters on initial data acquisition.

.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.

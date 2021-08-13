.. _device-senquip-orbx1:

Senquip ORB-X1
===============
The `Senquip <http://senquip.com>`_ **ORB-X1** connects to standard industrial sensors and allows remotely measured
data to be delivered to users anywhere in the world. It can be configured to send data to `eagle.io <https://eagle.io>`_ in a few easy steps.

.. only:: not latex

    .. image:: datalogger_senquip_orbx1.png
        :scale: 20 %

.. only:: latex

    .. image:: datalogger_senquip_orbx1.png
        :scale: 50 %

.. only:: not latex

    .. image:: datalogger_senquip_orbx1_open.jpg
        :scale: 80 %

.. only:: latex

    .. image:: datalogger_senquip_orbx1_open.jpg
        :scale: 100 %

|



Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-file>` and select *File* as the Source Type. Choose *JSON Time Series* from the list and click Next.

.. only:: not latex

    .. image:: senquip_orbx1_wizard_1.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: senquip_orbx1_wizard_1.png



2. Select *Publish to mqtt.eagle.io* as the transport type. A unique MQTT *Topic* will be automatically generated per Data Source. The *Topic* will always start with ``io/eagle/source/``, followed by a unique 3-word code, for example in the screenshot below the *Topic* is ``io/eagle/source/tail-chill-nic``. Change the Authentication setting from *None* to *CONNECT Message*, and you will notice that the *Username* becomes the 3-word code. Enter a password in the *Password* field, and click Next.

.. only:: not latex

    .. image:: senquip_orbx1_wizard_2.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: senquip_orbx1_wizard_2.png

    | 



3. In the next step, check the box to *Skip or Reset sample file and retrieve on next acquisition* and click Apply. 

.. only:: not latex

    .. image:: senquip_orbx1_wizard_3.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: senquip_orbx1_wizard_3.png



4. Complete the Data Source wizard by clicking *Next*, *Next* and *Finish*. 


5. Final configuration requires the device to send some sample data. Follow these `detailed device configuration steps <http://docs.senquip.com/app_notes/APN0014%20Rev%201.0%20-%20Integrating%20ORB%20Data%20with%20Eagle.io.pdf>`_, and then check the following settings:

MQTT
    Check the *Enabled* box
Broker Address
    ``mqtt.eagle.io:1883``
Client ID
    Leave blank
Data Topic
    Use the topic generated in step 2, e.g. ``io/eagle/source/tail-chill-nic``
Username
    Use the 3-word code generated in step 2, e.g. ``tail-chill-nic``
Password
    Use the password you entered in step 2


.. only:: not latex

    .. image:: senquip_orbx1_device.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: senquip_orbx1_device.png



6. Once sample data has been sent, final configuration of data series can be performed by right-clicking the Data Source in the eagle.io Workspace tree, and choosing *Properties*. Then click the *Series* tab, where data series' can be associated with Parameters.


.. only:: not latex

    .. image:: senquip_orbx1_wizard_4.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: senquip_orbx1_wizard_4.png



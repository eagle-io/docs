.. _device-mako:

Smithtek Mako V2
================
The `Smithtek <https://www.smithtek.com.au/products>`_ **Mako V2** is a compact, low-power LoRa (RF) PLC designed for reliable, smart and wireless operation in applications such as water treatment plants, power generation, environmental, and pumping systems. With its embedded LoRa antenna, it offers long-range connectivity up to 15 km and can run 24/7 on minimal solar backup. It can be configured to send data to `eagle.io <https://eagle.io>`_ in a few easy steps.

.. only:: not latex

    .. image:: datalogger_mako.png
        :scale: 30 %

.. only:: latex

    .. image:: datalogger_mako.png
        :scale: 50 %

|





Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-file>` and select *File* as the Source Type. Choose *JSON Time Series* from the list and click Next.

.. only:: not latex

    .. image:: mako_wizard_1.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: mako_wizard_1.png



2. Select *Publish to mqtt.eagle.io* as the transport type. A unique MQTT *Topic* will be automatically generated per Data Source. The *Topic* will always start with ``io/eagle/source/``, followed by a unique 3-word code, for example in the screenshot below the *Topic* is ``io/eagle/source/tail-chill-nic``. Change the Authentication setting from *None* to *CONNECT Message*, and you will notice that the *Username* becomes the 3-word code. Enter a password in the *Password* field, and click Next.

.. only:: not latex

    .. image:: mako_wizard_2.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: mako_wizard_2.png

    | 



3. In the next step, check the box to *Skip or Reset sample file and retrieve on next acquisition* and click Apply. 

.. only:: not latex

    .. image:: mako_wizard_3.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: mako_wizard_3.png



4. Complete the Data Source wizard by clicking *Next*, *Next* and *Finish*. 


5. Final configuration requires the device to send some sample data. The device can be configured in two different ways; to send data directly to eagle.io (via a 4G dongle or WAN network), or using the PassPort Gateway over LoRa.

6. Direct connection via a 4G dongle or WAN network:

.. only:: not latex

    .. image:: mako_direct.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: mako_direct.png

6.1. Download the `V-net software <https://26a6bc40-3386-4481-b01e-f59bb39d6cae.filesusr.com/archives/6ba956_63dc769f5a89455cbcc8b63a0d518781.zip?dn=V-Net35.zip>`_ and install on your computer (Windows only).

6.2. Download the eagle.io template from Smithtek technical support.

6.3. Over Wifi, connect your Mako V2 to a local USB 4G dongle or a WAN network. Enter the Wifi SSID and Pass credentials.

6.4. Connect your physical sensors to the Mako V2 and within V-net software wire these sensors reading to the JTS form component.

6.5. Upload the program.



7. Connection using the PassPort Gateway over LoRa:


.. only:: not latex

    .. image:: mako_gateway.png
        :scale: 100 %

    | 

.. only:: latex
    
    | 

    .. image:: mako_gateway.png

7.1. The PassPort Gateway can communicate with multiple Makos over long distances. This kind of system is very useful in locations with no mobile signal but has some form of fixed WAN network, like Starlink or NBN Sky Muster. It can also be used to minimize the need for multiple mobile SIMs, keeping your communications costs down.

7.2. Configure the Mako to send and receive data over its LoRa antenna within the V-net configuration software. Connect wires between single or arrays of sensors. Data formats can be binary packets, raw JSON data or some custom protocol.

7.3. In the LoRa properties, make sure your LoRa RF settings are the same on each device.

7.4. Start the PassPort Gateway and follow the connection guidelines to access the NodeRED editor and secure your instance.

7.5. Within the NodeRED editor, select the dedicated eagle.io nodes or the MQTT nodes

7.6. To configure the Smithtek eagle.io nodes follow `these instructions <https://flows.nodered.org/node/smithtek-node-red-eagleio>`_




8. Once sample data has been sent, final configuration of data series can be performed by right-clicking the Data Source in the eagle.io Workspace tree, and choosing *Properties*. Then click the *Series* tab, where data series' can be associated with Parameters.


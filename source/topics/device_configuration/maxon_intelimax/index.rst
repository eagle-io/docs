.. _device-intelimax:

Maxon Intelimax+
================
The `Maxon Intelimax+ 3G SERIAL MA-2020 <http://www.maxon.com.au/products/modems-routers/INTELIMAX+_3G_SERIAL_MA-2020.html>`_ modem can be quickly configured to connect your data logger to `eagle.io <https://eagle.io>`_. The *Intelimax+* takes any standard internet ready SIM Card without the need for fixed IP addresses and offers exceptional performance in locations with marginal signal strength.

.. only:: not latex

    .. image:: intelimax.png
        :scale: 100 %

.. only:: latex

    .. image:: intelimax.png
        :scale: 35 %

| 

Source configuration
--------------------
You need to configure your Data Source to use the **TCP Callback** transport. Click the *use existing* button and enter in the IMEI number printed on the back of the modem. See :ref:`configuring a Data Source <node-configuration-datasource-datalogger>` for full details.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: datasource_device.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: datasource_device.jpg

| 

Device settings
---------------
Use the Intelimax GUI software to configure the logger for communication with eagle.io. Refer to your Intelimax+ `user manual <http://www.maxon.com.au/products/modems-routers/INTELIMAX+_3G_SERIAL_MA-2020.html>`_ for connection instructions.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: intelimax_device.jpg
		:scale: 100 %

	| 

.. only:: latex

	| 

	.. image:: intelimax_device.jpg

The following settings should be assigned:

Protocol
    TCP
Mode
    Client
Primary Server
    device.eagle.io
Port Number
    4332
TCP connect message
    Enable

.. raw:: latex

    \newpage

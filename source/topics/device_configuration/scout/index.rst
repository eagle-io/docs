.. _device-scout:

Scout
======
The *Scout modem* is the easiest way to connect your data logger to `eagle.io <https://eagle.io>`_. The *Scout* takes any standard internet ready SIM Card without the need for fixed IP addresses and has a range of smart features including inbuilt GPS, signal strength monitoring, event based reporting and low power mode.

.. only:: not latex

    .. image:: scout.jpg
        :scale: 50 %

.. only:: latex

    .. image:: scout.jpg
        :scale: 35 %

| 

Source configuration
--------------------
You need to configure your Data Source to use the **Scout** transport. You can then use the *Device settings* button to display the device settings dialog. See :ref:`configuring a Data Source <node-configuration-datasource-datalogger>` for full details.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: datasource_device.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: datasource_device.jpg


.. only:: not latex

    |
    
Device settings
---------------
The device settings dialog allows you to review and configure the settings for your Scout. The status message at the bottom of the dialog will indicate if the remote device is *up to date* or *out of date*. Configuration updates will automatically be applied on the next successful connection.

.. only:: not latex

    |
    
General
~~~~~~~
The general section allows you to configure the device for use with your SIM.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: device_scout_general.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: device_scout_general.jpg

Status updates
	Frequency of status updates - including GPS coordinates and signal strength. This option is only available when the Data Source schedule is *Enabled* and Schedule type set to *Server*. When the Data Source schedule is *Disabled* or set to *Remote* the status updates will only occur when the device performs a Callback.
Phone number
	Phone number of the SIM Card in the device. Follow the standard `international format`_ starting with '+' and including country and area code.
	When the Data Source schedule is *Disabled* or set to *Remote* the phone number is used to send an SMS to the device to initiate a callback.
SIM pin
	PIN of the SIM Card or leave blank for no pin.
GPS enabled
	Disable the GPS if not needed to reduce power consumption.
Network configuration
	Uncheck *Automatic network configuration* only when the automatic mode does not work with your SIM. You will need to configure the Access point name and username/password as specified by your provider.

.. _international format: http://en.wikipedia.org/wiki/National_conventions_for_writing_telephone_numbers

.. only:: not latex

    |
    
Communication
~~~~~~~~~~~~~
The communication section allows you to change the COM1 port settings to correctly pass data between eagle.io and your data logger.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: device_scout_communication.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: device_scout_communication.jpg


.. note::
	Some data loggers may require a specific Baud rate, but most other settings should use the defaults.

.. only:: not latex

    |
    
Configuration
~~~~~~~~~~~~~
The configuration section allows you to view software versions and configure updates.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: device_scout_configuration.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: device_scout_configuration.jpg

Software updates
	Select an option for software updates:

	*Release* will use the latest stable software (recommended).

	*Development* will use an unstable version of the software still being tested.

	*Do not update automatically* will disable the updates.

Device log level
	Select the detail level of the device logs. Debug is the lowest level and will record all events. Select a higher level to filter out less important events. Logs are only retrieved on request via the *Retrieve logs* button in the Operation section. 

.. only:: not latex

    |
    
Operation
~~~~~~~~~
The operation section can be used to remotely reset or reboot the *Scout modem* or retrieve its internal logs.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: device_scout_operation.jpg
		:scale: 50 %

	| 
	
.. only:: latex

	| 

	.. image:: device_scout_operation.jpg

.. raw:: latex

    \newpage

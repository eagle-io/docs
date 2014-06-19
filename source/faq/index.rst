Frequently Asked Questions
==========================

General
-------

What browsers do you support and do I need any special software?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We support the latest versions of all major browsers: Chrome 16+, Firefox 16+, Internet Explorer 10+, Safari 6+. You do not need any special plugins or addons, just ensure you have Cookies and Javascript enabled. The interface has been designed to work seemlessly across all modern phones and computing devices.

.. |google-chrome-html| image:: chrome.png
	:scale: 50%
	:target: https://www.google.com/intl/en/chrome/browser/

.. |google-chrome-latex| image:: chrome.png
	:scale: 35%

.. only:: not latex

	|google-chrome-html| We recommend `Google Chrome <https://www.google.com/intl/en/chrome/browser/>`_ for the best Eagle.io experience.

.. only:: latex

	|google-chrome-latex| We recommend `Google Chrome <https://www.google.com/intl/en/chrome/browser/>`_ for the best Eagle.io experience.


What languages do you support?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
English is currently the only supported language. Support for other languages is coming soon. You can however set your timezone and display preferences.

Data Loggers
------------

What types of data loggers, PLCs and RTUs are supported?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We support the following range of dataloggers:

Campbell Scientific
	Data loggers that use the PakBus protocol including the CR200, CR800 and CR1000 series.

.. only:: not latex

	.. image:: datalogger_campbell_pakbus.jpg
		:scale: 50 %

.. only:: latex

	.. image:: datalogger_campbell_pakbus.jpg
		:scale: 75 %

WaterLog Storm3

.. only:: not latex

	.. image:: datalogger_waterlog_storm3.jpg
		:scale: 50 %

.. only:: latex

	.. image:: datalogger_waterlog_storm3.jpg
		:scale: 40 %

| 

Support for a wide range of additional data loggers and devices is coming soon. `Contact Us <https://eagle.io/contact/>`_ to find out how to get support for your device.


What connection options are supported?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
You can use a variety of transport options to connect your data logger to Eagle.io including:

TCP Client
	Connect to any device with a Public IP Address or Domain name (including DDNS)

TCP Callback or Stream
	Allow any remote device to establish an IP connection to Eagle.io using a special identification number. You can use your modem or data logger to send the Id on initial connection, or include a unique identifier in the data stream.

Scout 
	The *Scout modem* is the easiest way to connect your data logger to Eagle.io. The Scout takes any standard internet ready SIM Card without the need for fixed IP addresses and has a range of smart features including inbuilt GPS, signal strength monitoring, event based reporting and low power mode.


What level of functionality do you provide for connected data loggers?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Eagle.io provides much more than just data retrieval and display. From Eagle.io you can upload programs and firmware (including network wide updates in one click), perform Control operations (setting of public table variables in Campbell Scientific data loggers), automatically create/update/merge parameters as programs change, automatic clock sync with timezone and daylight savings support, and a range of other smart features designed to make managing your network of data loggers easier than ever before.

Can I connect to my data logger using 3rd party software?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Yes! You can enable *Remote Access* to your data logger at any time. An Internet address and Port will be allocated to allow you to immediately connect via TCP/IP. You can specify a session timeout and restrict access based on IP Address or allow connections from anywhere. Want to use LoggerNet or other tools for your low level operations - no problem. See :ref:`Data Source <node-configuration-datasource-datalogger>` configuration for full details.


Files
-----

What types of time series data files do you support?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We support most types of delimited text files such as csv, loggernet and other standard formats. See :ref:`Data Source <node-configuration-datasource-file>` configuration for full details.

What file transports do you support for automatic collection?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We support automatic collection via the following transports: 

- Any `Dropbox <http://www.dropbox.com>`_ account
- Email to our servers
- FTP to our servers
- Personal FTP servers
- Any HTTP(s) url

.. only:: not latex

	.. image:: transports-file.png
		:scale: 50 %

	| 

.. only:: latex

	.. image:: transports-file.png
		:scale: 25 %

You can also import and upload data manually from local files.


Can I upload other types of files?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Eagle.io supports uploading files of any type. You can manually upload files through the interface or use an :ref:`Attachment Source <node-configuration-attachmentsource>` for automated uploads. All content and files uploaded must comply with our `Acceptable Use Policy <https://eagle.io/policies/acceptableuse>`_.


Cameras
-------

Do you support cameras sending images or video files to Eagle.io?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Yes, you can create an :ref:`Attachment Source <node-configuration-attachmentsource>` which accepts files of any type. The files are stored as Attachments and you can set your Locations to display the most recent images uploaded. Images and video can be reviewed in the media gallery or downloaded for offline viewing.

We support Email and FTP as the Attachment Source transport. 
To send via Email, your camera must have in-built support for emailing images/files with custom subject text.
For uploads via FTP you can simply enter the credentials provided on Source creation.

Do you support live streaming video?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Support for live streaming video with optional PTZ control (Pan, Tilt, Zoom) is coming soon.
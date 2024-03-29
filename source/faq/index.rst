.. meta::
   :description: Frequently asked questions (FAQ) What browsers we support, what charts we support, what are our usage limits. Our SLA and uptime commitments. What cybersecurity and data integrity standards and strategies we follow. We answer your questions about eagle.io and IoT environmental monitoring

Frequently Asked Questions
==========================

.. only:: not latex

    |
    
General
-------

What browsers do you support?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We support all modern browsers: Chrome, Edge, Safari, Firefox and Opera.

Please ensure you have both **Cookies** and **Javascript enabled** and are using the **latest version** of your preferred browser.

.. |google-chrome-html| image:: chrome.jpg
	:scale: 50%
	:target: https://www.google.com/intl/en/chrome/browser/

.. |google-chrome-latex| image:: chrome.jpg
	:scale: 35%

.. only:: not latex

	|google-chrome-html| We recommend `Google Chrome <https://www.google.com/intl/en/chrome/browser/>`_ for the best `eagle.io <https://eagle.io>`_ experience.

	| 

.. only:: latex

	|google-chrome-latex| We recommend `Google Chrome <https://www.google.com/intl/en/chrome/browser/>`_ for the best `eagle.io <https://eagle.io>`_ experience.


How do I access an existing users data?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Account access is managed by the owner of the account and any nominated account administrators. 
Please request access directly from the appropriate persons in charge of the account. 

New users will receive an email invitation with a link to enter their details and access the site.

.. only:: not latex

	| 

What languages do you support?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
English is currently the only supported language. 
We recommend you use the `Google Translate extension for Chrome <https://chrome.google.com/webstore/search/google%20translate%20extension?hl=en>`_ for other languages. 
Users can set their own locale and timezone display preferences.

.. only:: not latex

	| 

What types of charts do you support?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We offer a variety of highly customizable interactive charts including :ref:`Historic <node-configuration-chart-historic>`, :ref:`Windrose <node-configuration-chart-windrose>` and :ref:`Displacement <node-configuration-chart-displacement>` charts. 
Check out our :ref:`charts documentation <node-configuration-chart>` for full usage details.

.. only:: not latex

	| 

How much historic data can I store?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We support the acquisition and storage of up to **20000 records per** :ref:`Data Source <node-configuration-datasource-datalogger>` **per day**. 
Refer to Historic Data :ref:`Limits <historic-limits>` for more information about storage limits.

.. only:: not latex

	| 

Where is my data stored and is it secure?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We store all customer data securely on Amazon Web Services data hosting facilities located in Australia. 
Data is strictly segregated so that no user may ever view, tamper with, or become aware of the data of any other user.
Refer to our `Compliance <https://eagle.io/policies/compliance>`_ section for full details.

.. only:: not latex

	| 

Do you have a service level guarantee?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We provide a full service level guarantee (99.9% up-time commitment) to clients subscribed to our Standard (or larger) pricing plans. 
Refer to our `SLA <https://eagle.io/policies/sla>`_ for full details. 

.. only:: not latex

	| 


Data Loggers
------------

What types of data loggers, PLCs and RTUs are supported?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We support the following range of data loggers:

Campbell Scientific
	Campbell PakBus loggers including CR200, CR300, CR800, CR1000, CR3000, CR9000, CRVW & CR6 series.

.. only:: not latex

	.. image:: datalogger_campbell_pakbus.jpg
		:scale: 50 %

.. only:: latex

	.. image:: datalogger_campbell_pakbus.jpg
		:scale: 100 %

CellVisor
	E State Automation CellVisor 3000/6000 series.

.. only:: not latex

	.. image:: datalogger_cellvisor.jpg
		:scale: 50 %

.. only:: latex

	.. image:: datalogger_cellvisor.jpg
		:scale: 40 %

| 

dataTaker
	Thermo Fisher Scientific DT80 range.

.. only:: not latex

	.. image:: datalogger_datataker.jpg
		:scale: 50 %

.. only:: latex

	.. image:: datalogger_datataker.jpg
		:scale: 55 %

| 

Generic
	Virtually any data logger that can *Email* or *FTP* data in CSV format.

.. only:: not latex

	.. image:: datalogger_generic.jpg
		:scale: 50 %

.. only:: latex

	.. image:: datalogger_generic.jpg
		:scale: 40 %

| 

Libelium
	Waspmote and Plug & Sense! range with support for *Direct Connect* or *Meshlium*
	
.. only:: not latex

	.. image:: datalogger_libelium.jpg
		:scale: 50 %

.. only:: latex

	.. image:: datalogger_libelium.jpg
		:scale: 55 %

| 

Worldsensing
	Loadsensing
	
.. only:: not latex

	.. image:: worldsensing_loadsensing.jpg
		:scale: 50 %

.. only:: latex

	.. image:: worldsensing_loadsensing.jpg
		:scale: 55 %

| 

OTT netDL
	OTT netDL 500 and 1000.

.. only:: not latex

	.. image:: datalogger_ott_netdl.jpg
		:scale: 60 %

.. only:: latex

	.. image:: datalogger_ott_netdl.jpg
		:scale: 50 %

| 

Point Orange 3G
	Metasphere Point Orange 3G RTU.

.. only:: not latex

	.. image:: datalogger_pointorange3g.jpg
		:scale: 50 %

.. only:: latex

	.. image:: datalogger_pointorange3g.jpg
		:scale: 50 %

| 

Senquip
	ORB-X1.

.. only:: not latex

	.. image:: datalogger_senquip_orbx1.png
		:scale: 8 %

.. only:: latex

	.. image:: datalogger_senquip_orbx1.png
		:scale: 8 %

| 

Spider
	Halytech Spider SMS and microSpider range.

.. only:: not latex

	.. image:: datalogger_halytech_spider.jpg
		:scale: 50 %

.. only:: latex

	.. image:: datalogger_halytech_spider.jpg
		:scale: 70 %

| 

YDOC
	YDOC ML-315 range of data loggers.

.. only:: not latex

	.. image:: datalogger_ydoc.jpg
		:scale: 50 %

.. only:: latex

	.. image:: datalogger_ydoc.jpg
		:scale: 40 %

| 

WaterLog
	WaterLog Storm3 series.

.. only:: not latex

	.. image:: datalogger_waterlog_storm3.jpg
		:scale: 50 %

.. only:: latex

	.. image:: datalogger_waterlog_storm3.jpg
		:scale: 40 %

| 

Support for a wide range of additional data loggers and devices is coming soon. `Contact Us <https://eagle.io/contact/>`_ to find out how to get support for your device.

.. only:: not latex

	| 

What connection options are supported?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
You can use a variety of transport options to connect your data logger to `eagle.io <https://eagle.io>`_ including:

TCP Client
	Connect to any device with a Public IP Address or Domain name (including DDNS).

TCP Server
	WaterLog, SensorLog, Waspmotes and other devices can establish a direct connection to the cloud to stream data on schedule or event-based.

TCP Callback
	Allow any remote device to establish an IP connection to eagle.io using a special identification number. You can use your modem or data logger to send the Id on initial connection, or include a unique identifier in the data stream.

Scout 
	The *Scout modem* is the easiest way to connect your data logger to eagle.io. The Scout takes any standard internet ready SIM Card without the need for fixed IP addresses and has a range of smart features including inbuilt GPS, signal strength monitoring, event based reporting and low power mode.

Meshlium
	Meshlium devices provide efficient routing of data collected from Waspmote devices in large Libelium sensor networks.

FTP/SFTP, Email, MQTT
	Send your data to the cloud via FTP/SFTP, Email or MQTT.

.. only:: not latex

	| 

What level of functionality do you provide for connected data loggers?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- Upload programs and firmware (including network wide updates in one click)
- Perform Control operations (setting of public table variables in Campbell Scientific data loggers)
- Create/update/merge parameters automatically as programs change
- Synchronize device clock with timezone and daylight savings support

.. only:: not latex

	| 

Can I connect to my data logger using 3rd party software?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Yes! You can enable *Remote Access* to your data logger at any time. An Internet address and Port will be allocated to allow you to immediately connect via TCP/IP. You can specify a session timeout and restrict access based on IP Address or allow connections from anywhere. Want to use LoggerNet or other tools for your low level operations - no problem. See :ref:`Data Source <node-configuration-datasource-datalogger>` configuration for full details.

.. only:: not latex

	| 

Files
-----

What types of time series data files do you support?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We support most types of delimited text files such as csv, loggernet and other standard formats. See :ref:`Data Source <node-configuration-datasource-file>` configuration for full details.

.. only:: not latex

	| 

What file transports do you support for automatic collection?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We support automatic collection via the following transports: 

- Download from FTP site
- Download from Web site
- Email to eagle.io
- Publish using MQTT
- Read from `Amazon S3 <https://aws.amazon.com/s3>`_
- Read from `Dropbox <http://www.dropbox.com>`_
- Upload to ftp.eagle.io
- Upload to sftp.eagle.io


.. only:: not latex

	.. image:: transports-file.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: transports-file.jpg
		:scale: 30 %

You can also manually import and export data files directly from the user interface or use our :ref:`HTTP API <api>` for automation.

.. only:: not latex

	| 

Can I upload other types of files?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Files of any type can be uploaded through the interface as an :ref:`Attachment <node-configuration-attachment>` or use an :ref:`Attachment Source <node-configuration-attachmentsource>` for automated uploads. All content and files uploaded must comply with our `Terms of Use <https://eagle.io/policies/terms>`_.

.. only:: not latex

	| 

Cameras
-------

Do you support cameras sending images or video files to eagle.io?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Yes, you can create an :ref:`Attachment Source <node-configuration-attachmentsource>` which accepts files of any type. The files are stored as Attachments and you can set your Locations to display the most recent images uploaded. Images and video can be reviewed in the media gallery or downloaded for offline viewing.

We support Email and FTP as the Attachment Source transport. 
To send via Email, your camera must have in-built support for emailing images/files with custom subject text.
For uploads via FTP/SFTP you can simply enter the credentials provided on Source creation.

Note - live streaming video is not directly supported.

.. only:: not latex

	| 

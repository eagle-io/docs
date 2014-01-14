Data Source (file)
==================
|icon-datasource| Data Sources automatically acquire or receive timeseries data using a variety of different transport options. Connect to a :term:`data logger` or collect data from files. Data Sources can be created inside Locations only.

The type of Data Source (data logger or file) is selected at time of creation and cannot be changed. This section is specific to file Data Sources.


Properties
----------
.. include:: properties.rstx

General
~~~~~~~
Source Enabled
	Uncheck the Source Enabled checkbox to stop collection and prevent alarms and notifications from triggering.

File type
	Select the type of file(s) you would like to collect. 

	**Delimited Text** store data by separating the values in each row with a specific :term:`delimiter` character.


.. only:: not latex

	.. image:: datasource_file_general.png
		:scale: 50 %

.. only:: latex

	.. image:: datasource_file_general.png

| 


Connection
~~~~~~~~~~
Retry attempts
	Select how many retry attempts are made during an acquisition or scheduled collection before the communications is considered failed.

Retry delay
	Select the delay between retry attempts. The retry attempts multiplied by the retry delay should not exceed the collection interval.

Transport type
	Select the transport used to acquire files.

Communications Alarm
	See :ref:`Alarms and Notifications <communications-alarm>`.

Dropbox
````````
Dropbox is used to connect to a `Dropbox`_ account. An *eagle.io* folder will be created in your Dropbox *Apps* directory where you can place files for collection.

.. _Dropbox: http://dropbox.com

.. only:: not latex

	.. image:: datasource_file_connection.png
		:scale: 50 %

.. only:: latex

	.. image:: datasource_file_connection.png

| 

When changing the account, a popup window will be displayed which allows you to login to Dropbox and authorise access as shown below.

.. only:: not latex

	.. image:: datasource_file_connection_dropbox_auth.png
		:scale: 50 %

.. only:: latex

	.. image:: datasource_file_connection_dropbox_auth.png
		:scale: 70 %

| 


Collection
~~~~~~~~~~

.. only:: not latex

	.. image:: datasource_file_collection.png
		:scale: 50 %

.. only:: latex

	.. image:: datasource_file_collection.png

| 

Scheduled
	Enable the schedule for automatic data collection.

Collection interval
	Select the frequency of the collection.

Interval offset
	Offset the collection interval to prevent collection occuring on the interval. eg. 1 hour collection interval will occur at 9am, 10am, etc. Set an interval offset of 5 minutes and the collection times will be 9:05am, 10:05am, etc.

Outdated Alarm
	See :ref:`Alarms and Notifications <outdated-alarm>`.




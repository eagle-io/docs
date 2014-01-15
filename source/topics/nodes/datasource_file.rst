.. _Dropbox: http://dropbox.com

.. _node-configuration-datasource-file:

Data Source (file)
==================
|icon-datasource| Data Sources automatically acquire or receive timeseries data using a variety of different transport options. Connect to a :term:`data logger` or collect data from files. Data Sources can be created inside Locations only.

The type of Data Source (data logger or file) is selected at time of creation and cannot be changed. This section is specific to file Data Sources.


Properties
----------
.. include:: properties.rstx


General
~~~~~~~
The general section allows you to specify the type file(s) you would like to collect.  

.. only:: not latex

	.. image:: datasource_file_general.png
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: datasource_file_general.png

Source Enabled
	Uncheck the Source Enabled checkbox to stop collection and prevent alarms and notifications from triggering.

File type
	Select the type of file(s) you would like to collect:

	*Delimited Text* 

		Data is stored as rows of values separated with a specific :term:`delimiter` character.


Connection
~~~~~~~~~~
Configure how you would like to connect to your file(s).

.. only:: not latex
	
	.. image:: datasource_file_connection.png
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: datasource_file_connection.png

Retry attempts
	Select how many retry attempts are made during an acquisition or scheduled collection before the communications is considered failed.

Retry delay
	Select the delay between retry attempts. The retry attempts multiplied by the retry delay should not exceed the collection interval.

Transport type
	Select the transport used to acquire files:

	*Dropbox*

		Dropbox is used to connect to a `Dropbox`_ account. An *eagle.io* folder will be created in your Dropbox *Apps* directory where you can place files for collection.

		.. only:: not latex

			.. image:: datasource_file_connection_dropbox_auth.png
				:scale: 50 %

		.. only:: latex

			.. image:: datasource_file_connection_dropbox_auth.png
				:scale: 70 %

		When changing the account, a popup window will be displayed which allows you to login to Dropbox and authorise access as shown above.

Communications Alarm
	See :ref:`Alarms and Notifications <communications-alarm>`.


Collection
~~~~~~~~~~
Collection is used to specify if and when data should be automatically collected from the Source.

.. only:: not latex

	.. image:: datasource_file_collection.png
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: datasource_file_collection.png

Scheduled
	Enable the schedule for automatic data collection.

Collection interval
	Select the frequency of the collection.

Interval offset
	Offset the collection interval to prevent collection occuring on the interval. eg. 1 hour collection interval will occur at 9am, 10am, etc. Set an interval offset of 5 minutes and the collection times will be 9:05am, 10:05am, etc.

Outdated Alarm
	See :ref:`Alarms and Notifications <outdated-alarm>`.


Parameters
~~~~~~~~~~~
The Parameters section allows you to manage the parameters associated with the Source.

.. only:: not latex

	.. image:: datasource_file_parameters.png
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: datasource_file_parameters.png


Add Files
	Add new files to be acquired by the Source. A list of files will be displayed which are available using the current connection options. Select the new files to be added. You will need to setup the parser configuration for each file added.

Location Coordinates
	The Source can optionally provide Location Coordinates from a coordinate series or a pair of numeric series (lat/lng). You need to configure the Location and select this Source to be used for its coordinates. Select the file and series to use from the drop down list.

Remove Files
	Click the 'x' to remove a file from the Source. All parameters associated with the file will be disabled.

Collect from date
	|icon-calendar| Set or reset the collection pointer for the corresponding file to re-collect its data from the specified date. This operation never removes historic data - it will only update and overwrite existing values.

Parser Configuration
	|icon-properties| Setup or Update the parser configuration for the selected file.

Clear Historic
	|icon-remove| Toggle active the Clear Historic button to clear the associated parameter's historic data on save.

Parameter Selection
	Check the Series items to create associated parameters on save. Unchecking an existing parameter will disable the associated Parameter Node but will not remove the Node or its historic data.

	The parameter icon indicates the :ref:`type of parameter <node-types>` that will be created.
	Rename and Delete operations should be performed from the Workspaces Menu.


Time
~~~~~
Time allows you to configure the timezone of the Source and associated options.

.. only:: not latex

	.. image:: datasource_file_time.png
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: datasource_file_time.png

Timezone
	Select the timezone the Source uses for storing historic data. Choose *(GMT+00:00) UTC* if data timestamps are in UTC.

Ignore Daylight Savings Time
	Check this option if the Source does not offset the data timestamps to account for DST.

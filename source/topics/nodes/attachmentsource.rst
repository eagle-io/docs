.. _node-configuration-attachmentsource:

Attachment Source
=================
|icon-attachmentsource| Attachment Sources have the ability to automatically acquire or receive Attachments. Attachment Sources can be created inside Locations only.


Properties
----------
.. include:: properties.rstx


General
~~~~~~~
The general section allows you to specify attachment storage options.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: attachmentsource_general.png
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: attachmentsource_general.png

Source Enabled
	Uncheck the Source Enabled checkbox to stop collection and prevent alarms and notifications from triggering.

Max attachments
	Specify the maximum number of attachments allowed within this Source. When new attachments arrive and the limit is exceeded, the oldest attachments are removed first. The maximum limit that can be set is 100 attachments per Source.

Remove after
	Enable this setting to specify the maximum number of days that attachments will be stored within this Source. The expired attachments will only be removed when new attachments arrive.


Connection
~~~~~~~~~~
Configure how you would like to connect to your attachments.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: attachmentsource_connection.png
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: attachmentsource_connection.png

Transport type
	Select the transport used to acquire attachments.

	*Email to eagle.io*

		Email attachments using the auto-generated address exactly as shown.

	*Upload to ftp.eagle.io*

		Ftp your files to ftp.eagle.io using the auto-generated user name exactly as shown. 
		Password is optional. 
		Use Tcp port 21 for standard Ftp and Tcp port 990 for implicit SSL. 
		**Note**: Only one concurrent ftp connection is allowed per Source.

Email address
	Email your attachments to this address. Click *change* to generate a new email address.

Ftp user
	The user name to use to login to the Ftp server. Click *change* to generate a new Ftp user.

Sender address filter
	For added security you can filter attachments by sender email address. Restrict to a specific email address or to a specific domain. eg. user@company.com or @company.com. Leave blank for no restriction.

Attachment / File types
	Restrict which file(s) get processed as Attachments by specifying a comma separated list of file extensions. eg. *jpg, png, mp4* will process standard media files and ignore all other file types.

Process email body
	Specify if the email message body should also be processed:

	*No* only the attachments will be processed.

	*Plain Text* will store the text content of the email in addition to any attachments.

	*HTML* will store the HTML content of the email in addition to any attachments.

Communications Alarm
	See :ref:`Alarms and Notifications <communications-alarm>`.




Collection
~~~~~~~~~~

Outdated Alarm
	See :ref:`Alarms and Notifications <outdated-alarm>`.

.. raw:: latex

    \newpage

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
	Enable this setting to specify the maximum number of attachments allowed within this Source. When new attachments arrive and the limit is exceeded, the oldest attachments are removed.

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
	Select the transport used to acquire attachments. This is currently restricted to email only.
	Email attachments to upload@eagle.io.

Subject text
	The subject of the email must appear exactly as shown. Click *change* to generate a new subject.

Communications Alarm
	See :ref:`Alarms and Notifications <communications-alarm>`.


Collection
~~~~~~~~~~
Collection is used to specify filter and processing options for attachment collection.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: attachmentsource_collection.png
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: attachmentsource_collection.png

Sender address filter
	For added security you can filter attachments by sender email address. Restrict to a specific email address or use \* to match multiple addresses from the same domain. Example: \*@company.com

Attachment filter
	Enter an attachment filter to restrict the files(s) that get saved as attachments. Use \* as a wildcard character. Example: \*.jpg to save all jpg images.

Process email body
	Specify if the email message body should also be processed:

	*No* only the attachments will be processed.

	*Plain Text* will store the text content of the email in addition to any attachments.

	*HTML* will store the HTML content of the email in addition to any attachments.

Outdated Alarm
	See :ref:`Alarms and Notifications <outdated-alarm>`.

.. raw:: latex

    \newpage

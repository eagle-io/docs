.. _view-events:

Events
========
|icon-events| Every interaction (user and system generated) is recorded in the Events log. Use the Events View to quickly audit the system, a user or history of alarms.

.. note::
	The view displays content based on the Selected Node in the Workspaces Menu. Use filters to quickly target specific parameters or review alarms.

The events list is live updating and always displayed in reverse chronological order. New events are automatically added to the top of the list. Scroll down the list to view older events.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: events_overview.png
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: events_overview.png
	

Searching the Event Log
-----------------------

Jump to Date
~~~~~~~~~~~~
Use the Jump to date control to jump to a specific date. After scrolling down, you can scroll back up to show more recent events.

.. only:: not latex

	.. image:: events_date.png
		:scale: 50 %

	| 

.. only:: latex

	.. image:: events_date.png
		:scale: 35 %

Detail Level
~~~~~~~~~~~~
Select the Detail level of the event log. Debug is the lowest level and will show all events, select a higher detail level to filter out the less important events. For example Info includes Warning and Error events (but not Debug events). The available detail levels include:

|icon-debug| Debug

|icon-info| Info

|icon-warning| Warning

|icon-error| Error

.. raw:: latex

    \newpage

Event Type
~~~~~~~~~~
Filter events by Event type. Use this drop down to quickly find events related to a certain type of action. For example you can quickly display all Notifications that have been sent for the Selected Node. The available event types include:

|icon-select-all| All

|icon-datasource-acquire| Acquisition

|icon-properties| Configuration

|icon-state| State

|icon-notification| Notification

|icon-control| Control

|icon-security| Security


Node Type
~~~~~~~~~
By default events will be displayed for the Selected Node and all Nodes it contains. You can use the Node type drop down to filter on a specific :ref:`type of node <node-types>`. For example select Attachment to display all events related to attachments within the Selected Node.

|icon-select-all| All

|icon-workspace| Workspace

|icon-group| Group

|icon-location| Location

|icon-datasource| Source

|icon-point-number-range| Parameter

|icon-attachment| Attachment

.. raw:: latex

    \newpage

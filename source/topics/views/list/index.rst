List
==========

|icon-list| Intuitive categorised lists provide quick access to the data for your most important Nodes: Locations, Sources, Parameters and Attachments.

.. note::
	The view displays content based on the Selected Node in the Workspaces Menu. Use filters to quickly target specific parameters or review alarms.

Sort rows in the list by clicking on column headers. 

List rows are temporarily highlighted immedietly following an update. Rows will be shown with a red background to indicate alarms on the Node or one of its contained Nodes. Rows with acknowledged alarms will be shown with an orange background.


Subviews
---------

Locations
~~~~~~~~~
Locations Subview displays an overview of Location Nodes.

.. image:: list_locations.png
	:scale: 50 %

Location
	Location name with path, including a preview image, map thumbnail and any configured location metadata.
Latest Data
	Timestamp of the most recent data from all Sources contained within the Location.
Alarms
	An alarm icon will be shown if there are any active or acknowledged alarms on or within the Location. Click or touch the alarm icon to display the alarm panel.
Subscribe
	Click or touch the subscribe icon to subscribe to the Nodes you would like to receive notifications for. You must have subscribe privillege for the Workspace. If the Location contains Sources, a subscription panel will be displayed so you can toggle your subscription preferences indiviually or all together.
Properties
	Show the Node properties dialog.


Sources
~~~~~~~
Sources Subview displays a list of all Data and Attachment Sources.

.. image:: list_sources.png
	:scale: 50 %

Location
	Location name with path.
Source
	Name of Source including relative path within Location
Status (link to all status descriptions)
	Current status of the Source.
Latest Data
	Timestamp of the most recent data from the Source.
Collected
	Displays number of records collected for a Data Source during last collection or number of files processed for an Attachment Source.
Signal Strength
	Displays the signal strength when the Data Source is using a Scout modem.
Alarms
	An alarm icon will be shown if there are any active or acknowledged alarms on or within the Source. Click or touch the alarm icon to display the alarm panel.
Subscribe
	Click or touch the subscribe icon to subscribe to the Nodes you would like to receive notifications for. You must have subscribe privillege for the Workspace. If the Source contains parameters, a subscription panel will be displayed so you can toggle your subscription preferences indiviually or all together.
Properties
	Show the Node properties dialog.

Parameters
~~~~~~~~~~
Parameters Subview displays a list of all parameters.

.. image:: list_parameters.png
	:scale: 50 %

Location
	Location name with path.
Source
	Name of Source including relative path within Location.
Parameter
	Name of parameter.
Value
	Value of the parameter at the time indicated by the Latest Data column.
State
	State associated with current parameter value.
Latest Data
	Timestamp of the most recent data for the parameter.
Alarms
	An alarm icon will be shown if there are any active or acknowledged alarms for the parameter. Click or touch the alarm icon to display the alarm panel.
Subscribe
	Click or touch the subscribe icon to subscribe to the Nodes you would like to receive notifications for. You must have subscribe privillege for the Workspace.
Properties
	Show the Node properties dialog.


|icon-control| Control parameters can be controlled inline in the parameters list. Click the control icon and set the new value or cancel. Requires operate permission for the Workspace.


Attachments
~~~~~~~~~~~
Attachments subview displays a list of all attachments.

.. image:: list_attachments.png
	:scale: 50 %

Preview
	Thumbnail image or file icon. Images can be clicked on to display the media gallery.
Container
	Path of the container Node where the attachment is located.
Name
	Name of the attachment.
Description
	User defined description of attachment.
Size
	Size of the attachment.
Time
	Time of the attachment upload.
Download
	Download the attachment.
Properties
	Show the Node properties dialog.

.. note:: 
	You must have the read attachments permission for the Workspace to see attachments in the list.

| 

Toolbar Controls
----------------

Toolbar controls should be used in combination with the row checkboxes to perform the selected operation on multiple Nodes. The same options are also available from the individual row context menus.

Notifications
~~~~~~~~~~~~~
|icon-subscribe| Subscribe or Unsubscribe from receiving notifications for the checked Nodes including all contained Nodes.

Alarms
~~~~~~
|icon-alarm| Acknowledge alarms with or without a comment, or Clear the alarms for the checked Nodes.

Operate
~~~~~~~
|icon-operate| Acquire or Control the checked nodes.

Historic Data
~~~~~~~~~~~~~
|icon-history| View data as a Table of values or graphically on a Chart. You can also export the historic data for the checked Nodes.

Upload Attachments
~~~~~~~~~~~~~~~~~~
|icon-attachment| Upload attachments within the Selected Node. You can also drag and drop new attachments direcly onto the attachment list. Requires configure permission. Ensure the Selected Node accepts attachments. 

Delete Attachments
~~~~~~~~~~~~~~~~~~
|icon-remove| Permantently delete the checked Attachments. This operation is not reversible.

Media Gallery
~~~~~~~~~~~~~
|icon-image| Displays images and supported video attachments in the gallery view. If no attachments are checked then all attachments will be available in the gallery. 

.. image:: list_gallery.png
	:scale: 50 %

| 





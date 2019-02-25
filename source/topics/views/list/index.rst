.. meta::
   :description: Intuitive categorised lists provide quick access to the data for your most important Nodes: Locations, Sources, Parameters and Attachments. Lists subviews, sources, parameters and attachements. Notifications and alarms. List view of monitoring data, deletion rules, uploads, lists thumbnails, media galleries. 

.. _view-list:

List
==========

|icon-list| Intuitive categorised lists provide quick access to the data for your most important Nodes: Locations, Sources, Parameters and Attachments.

.. note::
    The view displays content based on the Selected Node in the Workspaces Tree. Use filters to quickly target specific parameters or review alarms.

Sort rows in the list by clicking on column headers. 

List rows are temporarily highlighted immedietly following an update. Rows will be shown with a *RED* background to indicate active alarms on the Node or one of its contained Nodes. Rows with acknowledged alarms will be shown with an *ORANGE* background.
Rows will be shown in *GREY* if the corresponding node configuration has not been finalised (Sources) or the parameter is not linked to the Data Source for automatic collection (Parameters).

.. only:: not latex

    *Active Alarm*

    .. image:: list_alarm.jpg
        :scale: 50 %

    | 

    *Acknowledged Alarm*

    .. image:: list_acknowledged.jpg
        :scale: 50 %

    | 

    *Disabled*

    .. image:: list_disabled.jpg
        :scale: 50 %

    | 

.. only:: latex

    *Active Alarm*

    .. image:: list_alarm.jpg

    *Acknowledged Alarm*

    .. image:: list_acknowledged.jpg

    .. raw:: latex

        \newpage

    *Disabled*

    .. image:: list_disabled.jpg


.. only:: not latex

    |

Subviews
---------

Locations
~~~~~~~~~

Locations Subview displays an overview of Location Nodes.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: list_locations.jpg
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: list_locations.jpg


Location
    Location name with path, including a preview image, map thumbnail and any configured location metadata.
Latest Data
    Timestamp of the most recent data from all Sources contained within the Location.
Alarms
    An alarm icon will be shown if there are any active or acknowledged alarms on or within the Location. Click or touch the alarm icon to display the Alarm Panel.
Subscribe
    Click or touch the subscribe icon to subscribe to the Nodes you would like to receive notifications for. You must have *subscribe notifications* permission for the Workspace. If the Location contains Sources, the Subscription Panel will be displayed so you can toggle your subscription preferences indiviually or all together.
Properties
    Show the Node properties dialog.

.. only:: not latex

    |

.. raw:: latex

    \newpage

Sources
~~~~~~~
Sources Subview displays a list of all Data and Attachment Sources.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: list_sources.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: list_sources.jpg

Location
    Location name with path.
Source
    Name of Source including relative path within Location
Status
    Current status of the Source: 

    DISABLED
        The Source has been disabled by a user and will not be updated.
    IDLE
        The Source is enabled for communication but has no collection scheduled.
    SCHEDULED
        The Source is enabled for communication and has collection scheduled.
    QUEUED
        The Source is queued for communication.
    CONNECTING
        Attempting to connect to the Source.
    CONTROLLING
        Control operations are being performed on the connected Source.
    DOWNLOADING
        Data is currently being downloaded from the connected Source.                                     
    RETRYING
        Acquisition, Control or Configure operations have failed so a retry attempt has been scheduled.
    FAILED
        Acquisition, Control or Configure operations have failed (after retry attempts exceeded).
    PROCESSING
        Data is being processed after being downloaded from the connected Source.
    CONFIGURING
        Sending configuration to the Source.
    REMOTE
        Remote access is enabled and a client is connected. Acquisition, Control and Configure operations will not be available during this time.

Latest Data
    Timestamp of the most recent data from the Source.
Collected
    Displays number of records collected for a Data Source during last collection or number of files processed for an Attachment Source.
Alarms
    An alarm icon will be shown if there are any active or acknowledged alarms on or within the Source. Click or touch the alarm icon to display the Alarm Panel.
Subscribe
    Click or touch the subscribe icon to subscribe to the Nodes you would like to receive notifications for. You must have *subscribe notifications* permission for the Workspace. If the Source contains parameters, a subscription panel will be displayed so you can toggle your subscription preferences indiviually or all together.
Properties
    Show the Node properties dialog.

.. only:: not latex

    |

.. raw:: latex

    \newpage

Parameters
~~~~~~~~~~
Parameters Subview displays a list of all parameters.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: list_parameters.jpg
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: list_parameters.jpg

Location
    Location name with path.
Source
    Name of Source including relative path within Location.
Parameter
    Name of parameter.
Value
    Value of the parameter at the time indicated by the Latest Data column.
State
    State associated with current parameter value. An indicator will be displayed if the parameter has non-default states configured.
Latest Data
    Timestamp of the most recent data for the parameter.
Alarms
    An alarm icon will be shown if there are any active or acknowledged alarms for the parameter. Click or touch the alarm icon to display the Alarm Panel.
Subscribe
    Click or touch the subscribe icon to subscribe to the Nodes you would like to receive notifications for. You must have *subscribe notifications* permission for the Workspace.
Properties
    Show the Node properties dialog.


|icon-control| Control parameters can be controlled inline in the parameters list. Click the control icon and set the new value or cancel. Requires *operate* permission for the Workspace. See :ref:`Operate and Control <operate-and-control>` for full details. 

.. only:: not latex

    |

.. raw:: latex

    \newpage

.. _view-list-attachments:

Attachments
~~~~~~~~~~~
Attachments subview displays a list of all file :ref:`attachments <node-configuration-attachment>`.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

    .. image:: list_attachments.jpg
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: list_attachments.jpg

Preview
    Thumbnail image or file icon. Images can be clicked or touched to be shown in the media gallery.
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
    You must have the *read attachments* permission for the Workspace to see attachments in the list.

.. only:: not latex

    | 

Toolbar Controls
----------------
Toolbar controls should be used in combination with the row selection checkboxes to perform the selected operation on multiple Nodes at once. The same options are also available via the context menu for each row item.

| 

Notifications
~~~~~~~~~~~~~
|icon-notification| Subscribe or Unsubscribe from receiving :ref:`notifications <notifications>` for the checked Nodes including all contained Nodes.

| 

Alarms
~~~~~~
|icon-alarm| Acknowledge alarms with or without a comment, or Clear the alarms for the checked Nodes. Refer the section on :ref:`Alarms <alarms>` for more info.

| 

Operate
~~~~~~~
|icon-operate| Acquire or Control the checked nodes. See :ref:`Operate and Control <operate-and-control>` for more info.

| 

Historic Data
~~~~~~~~~~~~~
|icon-history| View data as a Table of values or graphically on a Chart. You can also export the historic data for the checked Nodes. See :ref:`Historic Data <historic-data>` for full details.

| 

Delete
~~~~~~~
|icon-remove| Permantently delete the selected Nodes. This operation is not reversible!

| 

Upload files
~~~~~~~~~~~~~~~~~~
|icon-attachment| Upload files as attachments of the selected Workspace Node. You can also drag and drop new attachments direcly onto any of the content views. Requires configure permission. Ensure the selected Workspace Node accepts attachments. 

| 

Media Gallery
~~~~~~~~~~~~~
|icon-image| Displays images and supported video attachments in the gallery view. If no attachments are checked then all attachments will be available in the gallery. 

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

    .. image:: list_gallery.jpg
        :scale: 50 %

    | 

.. only:: latex

    | 
    
    .. image:: list_gallery.jpg

.. _alarms-and-notifications:

Alarms and Notifications
========================
|icon-alarm| An alarm is an indication of an abnormal condition or problem detected by the system. Alarms are always associated with Nodes and are visually indicated throughout the interface using specific color coding. When an alarm is raised, you should typically acknowledge it so that other users do not attempt to investigate the same alarm condition. 

|icon-notification| Notifications are used to inform users of an Alarm or other condition without the users needing to be logged into the system. Notifications can be sent via Email and SMS. Users must personally subscribe to specific Nodes and specify their :ref:`notification preferences <user-notification-preferences>`.

.. only:: not latex

    |
    
Types of Alarms
---------------
There are different types of alarms which apply to specific Nodes. Notifications can optionally be configured for Alarms and require a Category to be selected. The notification drop down is used to specify when notifications should be sent - when the alarm is raised and/or cleared. Learn more about :ref:`configuring nodes <nodes-and-configuration>`.

.. only:: not latex

    |
    
.. _communications-alarm:

Communications Alarm
~~~~~~~~~~~~~~~~~~~~
Communications Alarms are specific to Sources and are triggered (if enabled) when communications to the Source has failed. 
If the communications attempt is not successful during a user acquisition or scheduled collection it will start retrying the communications at the frequency and duration set in the Source *Retry attempts* and *Retry delay* connection properties. Once failed, communications will not be attempted until the next user acquisition or scheduled *Collection interval*.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: communications_alarm.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: communications_alarm.jpg

.. only:: not latex

    |
    
.. _outdated-alarm:

Outdated Alarm
~~~~~~~~~~~~~~
Outdated Alarms are specific to Sources and are triggered (if enabled) when no new data has been received by the Source after the specified *Maximum timeout*. Outdated alarms usually indicate a problem with the device or data being logged.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: outdated_alarm.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: outdated_alarm.jpg

.. only:: not latex

    |
    
.. _configuration-alarm:

Configuration Alarm
~~~~~~~~~~~~~~~~~~~
Configuration Alarms are specific to data logger Data Sources and are triggered (if enabled) when an error is encountered when applying the user-selected :ref:`configuration <operate-manageconfiguration>` file(s).

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: configuration_alarm.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: configuration_alarm.jpg

.. only:: not latex

    |
    
.. _control-alarm:

Control Alarm
~~~~~~~~~~~~~
Control Alarms are specific to Control Parameters and are triggered (if enabled) when a control operation has failed for any reason other than a communications failure.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: control_alarm.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: control_alarm.jpg

.. only:: not latex

    |
    
.. _state-arlam:

State Alarm
~~~~~~~~~~~
State Alarms are defined in the state configuration for Parameter Nodes.
Each State can have individual alarm and notification criteria.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: state_alarm.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: state_alarm.jpg

.. only:: not latex

    |
    
Alarm Indicators
-----------------
Alarms are always shown in *RED*. When an alarm has been Acknowledged it will be shown in *ORANGE*. When the Alarm is Cleared (when the condition or problem has returned to normal, or when the user has manually cleared the alarm) the Node or Content is displayed with its normal color. See below for an example of alarm content.

.. only:: not latex

    |
    
Workspaces Tree
~~~~~~~~~~~~~~~
Alarms are shown in the Workspaces Tree as numbers indicating the total count of unacknowledged alarms on or within the Node. Expanding the Nodes will show the individual alarm counts next to each contained Node.

.. only:: not latex

	.. image:: workspaces_tree_alarm_1.jpg
		:scale: 50 %

	| 

	.. image:: workspaces_tree_alarm_2.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: workspaces_tree_alarm_1.jpg
		:scale: 40 %


	.. image:: workspaces_tree_alarm_2.jpg
		:scale: 40 %

.. only:: not latex

    |
    
List View
~~~~~~~~~
List View has an Alarm Icon which can be clicked or touched to reveal the Alarm Panel.
The Alarm Panel displays a quick list of the currently active or acknowledged alarms for the corresponding Node.

.. only:: not latex

	*Active Alarm*

	.. image:: list_alarm.jpg
		:scale: 50 %

	| 

	*Acknowledged Alarm*

	.. image:: list_acknowledged.jpg
		:scale: 50 %

	| 

	*Alarm Panel accessible from List View*

	.. image:: alarmlist_alarm.jpg
		:scale: 50 %

	| 

	.. image:: alarmlist_acknowledged.jpg
		:scale: 50 %

	| 

.. only:: latex

	*Active Alarm*

	.. image:: list_alarm.jpg

	*Acknowledged Alarm*

	.. image:: list_acknowledged.jpg

	*Alarm Panel accessible from List View*

	.. image:: alarmlist_alarm.jpg
		:scale: 60 %

	.. image:: alarmlist_acknowledged.jpg
		:scale: 60 %

.. only:: not latex

    |
    
Map View
~~~~~~~~
Map View applies the alarm color variations to the Location markers, temporarily overwriting the default marker color. 

.. only:: not latex

	*Active Alarm*

	.. image:: map_marker_alarm.jpg
		:scale: 50 %

	| 

	*Acknowledged Alarm*

	.. image:: map_marker_acknowledged.jpg
		:scale: 50 %

	| 

.. only:: latex

	*Active Alarm*

	.. image:: map_marker_alarm.jpg
		:scale: 40 %

	*Acknowledged Alarm*

	.. image:: map_marker_acknowledged.jpg
		:scale: 40 %

.. only:: not latex

    |
    
Alarm Operations
-----------------
Alarm operations are accessible from the Node and View context menus, List View toolbar and Alarms Panel (accessible from List View).
The following alarm operations are available:

.. only:: not latex

    |
    
Acknowledge
~~~~~~~~~~~
|icon-alarm-check| Acknowledge an alarm so other users do not attempt to investigate the same alarm condition. Requires *acknowledge alarms* permission.

.. only:: not latex

    |
    
Acknowledge with comment
~~~~~~~~~~~~~~~~~~~~~~~~
|icon-alarm-comment| Acknowledge an alarm and include a comment to indicate the cause or the action that is being taken to resolve the issue.
The acknowledge alarms dialog will be displayed and you will be prompted to enter a comment for the acknowledgement. Requires *acknowledge alarms* permission.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: acknowledge_alarm_comment.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: acknowledge_alarm_comment.jpg

.. only:: not latex

    |
    
Clear alarm
~~~~~~~~~~~~
|icon-alarm-cancel| Clear alarms to reset any active or acknowledged alarms on the Node. Alarms are automatically cleared by the system when the condition or problem has returned to normal. You should only clear alarms if you have changed the alarm configuration for the Node after the alarm has occurred, otherwise there will no longer be any visual indication that the Node is in an abnormal condition until the alarm is raised again.
Requires *edit states and alarms* permission.

.. only:: not latex

    |
    
Alarm History
-------------
|icon-events| Use the :ref:`Events View <view-events>` with the Alarm Filter enabled to review all Alarm events that have occurred for the Selected Node. Events are logged when an Alarm is raised (becomes active), Acknowledged and Cleared. All information including time, comments and user are logged with the event.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: alarm_history.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: alarm_history.jpg

.. only:: not latex

    |
    
Notifications
-------------
There are 3 steps to configuring notifications:

1. :ref:`Configure the Node <nodes-and-configuration>` and set the Notification option and Category for an Alarm type or State.
2. Configure your user profile :ref:`notification preferences <user-notification-preferences>`.
3. :ref:`Subscribe to the Nodes <subscribe-nodes>` you would like to receive notifications for.

Account administrators can also define custom notification categories and set limits on certain types of notifications. See :ref:`managing notifications <management-notifications>` for full details.

.. only:: not latex

    |
    
.. _subscribe-nodes:

Subscribe to Nodes
~~~~~~~~~~~~~~~~~~
|icon-subscribe| Subscribe to and Unsubscribe from Nodes via the Workspace Menu and View's context menus, List View toolbar or from the subscribe icon shown in the List View rows. 

When changing subscription options from the toolbar or context menu the checked or chosen Nodes including all contained Nodes will have the new subscription options applied.

Click or touch the subscribe icon in the List View to toggle your subscription to the corresponding Node(s). If the Node contains other Nodes (ie. Location Node contains Source Node), the Notification Subscription Panel will be displayed to allow you to select which types of Nodes you would like to subscribe to or unsubscribe from. A partially colored subscription icon indicates that not all child Nodes have been subscribed to.

*Notification Subscription Panel accessible from List View*

.. only:: not latex

	.. image:: notification_panel.jpg
		:scale: 50 %

	| 
		
.. only:: latex

	.. image:: notification_panel.jpg
		:scale: 40 %
		

.. note::
	Users require *subscribe notifications* permission to subscribe to Nodes. See :ref:`User roles <management-security-userroles>` for full details about configuring Workspace User roles and assigning permissions.

.. raw:: latex

    \newpage

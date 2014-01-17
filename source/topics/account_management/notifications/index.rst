.. _management-notifications:

Notifications
==============

|icon-notification| Notifications section is used to configure the Notification Limits and Categories for the currently selected account.

.. _management-notifications-limits:

Notification Limits
-------------------
Email notifications are free and unlimited.

SMS notifications incur charges on the Owners Account. You can restrict the total number of SMS's allowed to be sent from your account per billing period. You can also choose to *Disable*  SMS or set to *Unlimited*  for no restriction.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: account_notification_limits.png
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: account_notification_limits.png
		:scale: 70 %

The account owner will receive an Email from the system when the total number of SMS sent within the current billing period gets close to the selected limit. Another Email will be sent when the limit is reached and no further notification SMS's will be sent until the next billing period.


.. _management-notifications-categories:

Notification Categories
-----------------------

Notification Categories provide a mechanism for users to filter the notifications they receive from a Node they are subscribed to.
All Nodes, States and/or Alarms that provide a Notification option require a Category to be specified.
Users must individually select the categories in each Workspace they would like to receive notifications for. See :ref:`Notification Preferences <user-notification-preferences>` for full details.

Add, rename and remove categories as necessary.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: account_notification_categories.png
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: account_notification_categories.png
		:scale: 80 %


.. note:: 
	Removing categories will also remove associated user notification preferences. There should always be atleast one Category configured.

.. _user-preferences:

User Preferences
================

|icon-user| User profile, accessible from the User Menu is where all your personal preferences are configured.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: user_profile_overview.png
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: user_profile_overview.png


Change login email
------------------
Use the *Change* button to update your user profile email address. An email will be sent to the new address with a one-time verification link to confirm the change. Any re-sends or new address changes will invalidate previously generated links.


Choose a Timezone and Time format
---------------------------------
Select the :ref:`timezone <timezone>` you would like to use for displaying Workspace data. All data and notifications are displayed in your timezone regardless of the data's origin.

Time format is used to specify the default appearance of date & time information. Select a preset format from the drop down list or specify a custom format using :ref:`time format tokens <time-format-tokens>`.


Resetting your password
-----------------------
The User profile has a *Change Password* section for immediate password changes.
If you have forgotten your password you can use the *Forgot Password* link on the public site to send a reset link to your User profile email address.


.. _user-notification-preferences:

Notification preferences
------------------------
The Notifications section contains a list of Workspaces that you have been given *subscribe notifications* permissions for.
Click or touch the Workspace labels to display your preferences.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: user_profile_notification.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: user_profile_notification.jpg
	

Within each Workspace, you will see a list of Notification Categories specific to the Workspace.
Use the SMS/Email checkboxes to set your preferences on what types of notifications you would like to receive for each Category.

.. note:: 
	You must also be subscribed to the individual Nodes you would like to receive the notifications for. See :ref:`Subscribe to Nodes <subscribe-nodes>` for full details.


.. _user-api-keys:

API Keys
---------
API keys are used to authenticate eagle.io :ref:`HTTP API <api>` requests.
The API keys section allows you to create, delete or modify the permissions for API keys associated with your user account.
You can have multiple API keys active at once. 

API resource requests are always limited to the users Workspace and Account permissions. 
Individual API key's can optionally be assigned the *read-only* permission to restrict the actions an API request can perform (GET requests only).

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: user_profile_apikeys.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: user_profile_apikeys.jpg

The *Display Node Ids in properties dialog* option is useful for retrieving a specific Node Id for use with the HTTP API. The *Node Id* will be shown in the associated Node properties dialog.

.. note::
	Your API keys carry many privileges, so be sure to keep them secret!


.. raw:: latex

    \newpage
    

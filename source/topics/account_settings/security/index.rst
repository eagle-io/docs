Security
========

|icon-security| Security allows you to configure Administrators of the account and User roles.

.. only:: not latex

    |


.. _management-security-administrators:

Administrators
---------------

Administrators have full access to your account including unrestricted access to all Workspaces and most configuration settings for the account. There is no need to explicitly :ref:`Share a Workspace <node-configuration-workspace-security>` with any Administrators of the same account.
If you would like a user to have restricted access to Workspaces, then *do not* add them as Administrators. Instead use :ref:`Workspace Sharing <node-configuration-workspace-security>` to add them as a User of a Workspace with an assigned role.

Add a new administrators by entering their email addresses and click *Add*. Separate multiple email addresses with a comma. Remove administrators by clicking the trash icons. Click *Save* to confirm.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: account_administrators.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: account_administrators.jpg

.. note:: 
	You should only add trusted users as Administrators to keep your account secure. 

.. only:: not latex

    |


.. _management-security-groups:

Groups
---------

Groups are used to organize your users and provide a convenient way to manage :ref:`Workspace access <node-configuration-workspace-security>` and :ref:`notifications <notifications>`. 
To use groups, simply click *Add group*, assign a unique name and enter the email address of user(s) that you want to include in the group. 
New users will receive a welcome email with links to setup their user profile and login. A user can be assigned to more than one group. 

After saving the newly created group, you can proceed to :ref:`share workspace access <node-configuration-workspace-security>` and :ref:`manage notifications <notifications-manage>`.

You can now add/remove users to the group and they will automatically receive/lose Workspace access and notifications associated with the group.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: account_groups.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: account_groups.jpg


.. only:: not latex

    |


.. _management-security-userroles:

Roles
----------

Roles are assigned when :ref:`Sharing a Workspace <node-configuration-workspace-security>` to restrict user and group access to certain feautres.
Create unlimited new roles, or change existing role permissions as needed. 
Removing a role that has been assigned will restrict associated users to *View only* access.

*Default Roles*

.. only:: not latex

	.. image:: account_roles.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	.. image:: account_roles.jpg
	

*Permissions*

View
	Minimum required permissions to log in and view content.

Read attachments
	Preview and Download attachments.

Export data
	Export historic data associated with parameters and locations.

Send messages
	Send messages to users of the Workspace.

Acknowledge alarms
	Acknowledge alarms with or without comment.

Edit states & alarms
	Configure Node states and alarms, or Clear alarms.

Edit quality & annotations
	Assign quality and annotations to timeseries records.

Edit data
	Modify or remove timeseries record values.

Operate
	User can Acquire and Control Datasources and Parameters.

Subscribe notifications
	Subscribe to Nodes and receive Email and SMS notifications.

Manage notifications
	Manage user notification subscriptions on behalf of other users.

Configure
	Create, Modify & Delete Nodes and associated configuration or Upload Attachments.

Security
	Workspace Sharing and assignment of User Roles.


.. note:: 
	Security and Sharing changes take effect immediately on save.

.. only:: not latex

    |


.. _management-security-apikeys:

API keys
----------

API keys are used to authenticate eagle.io HTTP API requests. The API keys section allows you to create, delete or modify the permissions for API keys associated with your user account. You can have multiple API keys active at once.

API resource requests are always restricted to Workspaces in the associated account. Individual API key’s can optionally be assigned the *Read only* permission to restrict the actions an API request can perform (GET requests only). 
You can also set the access level to *Limited workspaces* and check all the Workspaces this API key is allowed to access. 

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: account_apikeys.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: account_apikeys.jpg

.. note:: 
	Your API keys carry many privileges, so be sure to keep them secret!

.. raw:: latex

    \newpage

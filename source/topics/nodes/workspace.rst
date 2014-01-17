.. _node-configuration-workspace:

Workspace
=========
|icon-workspace| Workspaces are special container Nodes that can be shared with other users. All other Nodes are created within the Workspace. Workspaces can only be created by the Account Owner or Administrators.


Properties
----------
.. include:: properties.rstx

.. _node-configuration-workspace-sharing:

Sharing
~~~~~~~
The Sharing section allows you to share your Workspaces with other users.
Enter the email address of the new user and select *Add*. Assign a :ref:`User role <management-security-userroles>` to the user for this Workspace and *Save*.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: workspace_sharing.png
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: workspace_sharing.png

An email notification will be sent to users when they are added or removed from the Workspace or when their user role is changed.
New users will need to follow the instructions in the email to finalise their profile and log in for the first time.
Existing users who are currently logged in and viewing the interface will notice the new settings take affect immediately.

Workspace Sharing requires *security* permission.

.. note:: 
	Administrators automatically receive unrestricted access to all Workspaces in the account.

.. raw:: latex

    \newpage

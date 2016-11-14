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

.. _management-security-userroles:

User roles
----------

User roles are assigned when :ref:`Sharing a Workspace <node-configuration-workspace-security>` with a user to restrict access to the Workspace.
Create unlimited new roles, or change existing role permissions as needed. 
Roles have permissions associated with them which restrict user functionality.

*Default User Roles*

.. only:: not latex

	.. image:: account_user_roles.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	.. image:: account_user_roles.jpg
	

*Permissions*

View
	Minimum required permissions to log in and view content.

Read attachments
	Preview and Download attachments.

Export data
	Export historic data associated with parameters and locations.

Send messages
	Send messages to users of the Workspace.

Subscribe notifications
	Subscribe to Nodes and receive Email and SMS notifications.

Acknowledge alarms
	Acknowledge alarms with or without comment.

Edit states & alarms
	Configure Node states and alarms, or Clear alarms.

Operate
	User can Acquire and Control Datasources and Parameters.

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

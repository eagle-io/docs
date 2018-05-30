.. _sharing-and-security:

Sharing and Security
====================

Every interaction with the system is authenticated to ensure the user performing the interaction or operation has permission to do so. 

Eagle.io provides 3 distinct types of user security:

| 

Owner
~~~~~
The user that signed up for the account. 
Only this user can close the account or change the subscription plan. 
The user has full unrestricted access to all assets and account settings including :ref:`Managed accounts <management-managedaccounts>`.

| 

Administrator
~~~~~~~~~~~~~
A user can be :ref:`added as an Administrator <management-security-administrators>` of an account which provides them full unrestricted 
access to all assets and account settings excluding closing the account or changing the subscription plan. 
Administrators also have full access to :ref:`Managed accounts <management-managedaccounts>`.

| 

Workspace
~~~~~~~~~~
Individual users or :ref:`groups <management-security-groups>` can be :ref:`added to a Workspace <node-configuration-workspace-security>` and assigned a security :ref:`role <management-security-userroles>` specific to the Workspace (role-based security).
The security roles are maintained by administrators and the owner. 
Each role has a set of security permissions assigned (e.g. acknowledge alarms, export data, configure) which define the interactions allowed by a user or group for all assets (nodes) in the Workspace.

Workspaces can be shared with anyone. Users new to `eagle.io <https://eagle.io>`_ will receive an email notification prompting them to confirm their email address and configure their personal preferences. Select *Security* from the Workspace Node context menu to display the Security dialog.
See :ref:`Workspace Security <node-configuration-workspace-security>` for full details.

You can restrict user and group access to any Node in the Workspace by opening the corresponding :ref:`Node Security <node-configuration-location-security>` dialog and assigning the *No Access* role.

.. note:: The :ref:`Events View <view-events>` provides an audit trail for all user interactions and system events.

.. raw:: latex

    \newpage
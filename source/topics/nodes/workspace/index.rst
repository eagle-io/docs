.. _node-configuration-workspace:

Workspace
=========
|icon-workspace| Workspaces are special container Nodes that can be shared with other users. All other Nodes are created within the Workspace. Workspaces can only be created by the Account Owner or Administrators.

.. only:: not latex

    |

Properties
----------
.. include:: ../properties.rstx

.. only:: not latex

    |

.. _node-configuration-workspace-maplayers:

Map layers
~~~~~~~~~~

Use the *Map layers* section to add or remove KML (or KMZ) files to be :ref:`displayed on the map <view-map-layers>` when this workspace is selected in the :ref:`Workspaces Tree <workspaces_tree>`.
Click the *Edit* button to show and modify the configuration for each layer. Use the *Add layer* button to add a new layer to the list. 
The following configuration options are available:

Type
    **Local KML** allows you to upload a file from your computer.
    
    **Remote KML** should be used when the file is located on a publically accessible web server.

Select file / File URL
    Select a file to upload or enter the full HTTP(S) URL to the file.

Label
    The label is displayed in the layers menu on the map toolbar.

Layers can be removed via the dropdown menu (accessible by clicking the menu button on the top-right corner of the layer item). 

Drag and drop layers in the list (or use the dropdown menu) to change their display order on the map.

::

    Example URL: http://water.weather.gov/ahps/worldfiles/ahps_national_obs.kmz


.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: workspace_maplayers.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: workspace_maplayers.jpg
        :scale: 80 %

.. note::

    Restrictions apply to map layers:

    - Maximum fetched file size (raw KML compressed KMZ): 3MB
    - Maximum uncompressed KML file size: 10MB
    - Maximum number of Network Links: 10
    - Maximum number of total document-wide features: 1,000

    Refer to the `google developer documentation <https://developers.google.com/maps/documentation/javascript/kmllayer?csw=1#restrictions>`_ for a complete list of restrictions and supported KML elements.


.. only:: not latex

    |

.. _node-configuration-workspace-security:

Security
~~~~~~~~~
The Security section allows a user with *security* permission to share the Workspace with other users individually or as a group.

Users can be individually added to the workspace by entering the email address of the new users (separate multiple email addresses with a comma), assign a security :ref:`role <management-security-userroles>` and click *Add*. 
You can remove or modify security roles for existing Workspace users. Click *Save* when complete.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: workspace_security_users.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: workspace_security_users.jpg


You can also *Add* a pre-configured :ref:`group <management-security-groups>` of users to the Workspace and assign a security :ref:`role <management-security-userroles>` which will be applied to all users in that group. 
The *Add groups* dropdown displays a list of all groups that have been configured in the account. To add a new group or assign users to the group refer to the section on :ref:`group security <management-security-groups>`.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

    .. image:: workspace_security_groups.jpg
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: workspace_security_groups.jpg

An email notification will be sent to users when they are added or removed from the Workspace or when their security role is changed.
New users will need to follow the instructions in the email to configure their user profile and log in.
Existing users who are currently logged in and viewing the interface will notice the new settings take affect immediately.

You can restrict user/group access to any Node in the Workspace by opening the corresponding :ref:`Node Security <node-configuration-location-security>` dialog.

.. note:: 
	Administrators automatically receive unrestricted access to all Workspaces in the account.

.. raw:: latex

    \newpage

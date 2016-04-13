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

Select file / Dile URL
    Select a file to upload or enter the full HTTP(S) URL to the file.

Label
    The label is displayed in the layers menu on the map toolbar.

Layers can be removed via the dropdown menu (accessible by clicking the menu button on the top-right corner of the layer item). 

Drag and drop layers in the list (or use the dropdown menu) to change their display order on the map.


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

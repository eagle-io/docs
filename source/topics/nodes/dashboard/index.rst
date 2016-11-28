.. _node-configuration-dashboard:

Dashboard
=========
|icon-dash| Dashboards allow users to create customized views of their data in visually appealing layouts using animated gauges, charts, lists, maps and other graphical controls.

Dashboards contain user configurable tiles which can be linked to Nodes to display your important data in real-time with live updates.
Tile layout is automatically adjusted to best suit your display device.

.. only:: not latex

    .. image:: dash_layout.jpg
        :scale: 50 %

    | 

.. only:: latex

	| 

    .. image:: dash_layout.jpg

.. only:: not latex

    |

Add tile
--------
|icon-dash-tile| Click the Add tile button from the Toolbar to open the Tile library. Select the type of Tile you would like to add from the presets or click cancel to close the dialog.

.. only:: not latex

    .. image:: dash_tile_library.jpg
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: dash_tile_library.jpg

.. only:: not latex

    |

Tile operations
----------------
Moving the mouse over or touching a tile will show the title bar and menu button to users with *Configure* permission.

.. only:: not latex

    .. image:: dash_tile_operations.jpg
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_operations.jpg
    	:scale: 30 %

.. only:: not latex

    |

Reposition
~~~~~~~~~~
Click or Touch, hold and drag the title bar to reposition the Tile on the Dashboard. Tile layout is automatically adjusted to suit the display device and tiles are always ordered in rows starting from the top left to bottom right of the screen. Requires *Configure* permission. **Note:** Reposition operation not available on small screen devices (width <620px).

.. only:: not latex

    .. image:: dash_tile_reposition.jpg
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_reposition.jpg
    	:scale: 30 %

.. only:: not latex

    |

Resize
~~~~~~
Click or Touch, hold and drag the resize handle to adjust the width and height of the Tile. Requires *Configure* permission. **Note:** Resize operation not available on small screen devices (width <620px).

.. only:: not latex

    .. image:: dash_tile_resize.jpg
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_resize.jpg
    	:scale: 30 %

.. only:: not latex

    |

Rename
~~~~~~
|icon-rename| Select *Rename* from the tile menu to update or remove the Tile label.

.. only:: not latex

    .. image:: dash_tile_rename.jpg
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_rename.jpg
    	:scale: 30 %

.. only:: not latex

    |

Delete
~~~~~~
|icon-remove| Delete the Tile from the Dashboard.

.. only:: not latex

    |

Duplicate
~~~~~~~~~
|icon-copy| Duplicate the current Tile and its configuration.

.. only:: not latex

    |

Properties
~~~~~~~~~~
|icon-properties| Configure the Tile properties to change General display settings and Links.

.. only:: not latex

    |

General
`````````
The general section allows you to configure layout and display options for the Tile. Certain types of Tiles have specific options. For example the Historic Chart tile includes Period and Zoom settings while most other Tiles have selectable color styles and alarm options.

.. only:: not latex

    .. image:: dash_tile_properties_general.jpg
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_properties_general.jpg
    	:scale: 70 %

.. only:: not latex

    |

Links
``````
Links assign Nodes in the Workspaces Tree to Tiles so the corresponding data can be displayed and updated live.
Each type of Tile may enforce specific Link requirements. For example the Location map tile can only be linked to a single Location Node. Some tiles allow for multiple links to be assigned. 

Click the *Edit* button to show and modify the configuration for each link. Use the *Add link* button to display the Workspaces Tree and select a new Node to link. Links can be removed via the dropdown menu (accessible by clicking the menu button on the top-right corner of the link item). 

Dashboard tiles can not have links to Nodes in different Workspace and currently do not support the same nodes being linked more than once to the same tile.

Drag and drop links in the list to change their display order on the tile.

.. only:: not latex

    .. image:: dash_tile_properties_links.jpg
        :scale: 50 %

    | 

.. only:: latex

	| 

    .. image:: dash_tile_properties_links.jpg


.. only:: not latex

    |

Security
`````````
.. include:: ../properties_node_security.rstx

| 

Drag and Drop Links
--------------------
Nodes can be dragged with a mouse directly from the Workspaces Tree and dropped onto applicable Tiles (indicated with drop-accept and drop-blocked mouse cursor icons).

.. only:: not latex

    .. image:: dash_tile_link_drag.jpg
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_link_drag.jpg
    	:scale: 30 %


.. only:: not latex

    .. image:: dash_tile_link_drop.jpg
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_link_drop.jpg
    	:scale: 30 %

.. only:: not latex

    |

Copy/Paste Dashboards
--------------------------
|icon-paste| Copy/Paste operations can be performed from the Workspaces Tree to quickly duplicate one or more dashboards. Links are automatically re-assigned to corresponding Nodes relative to the Dashboard if they exists at the destination. ie. You can copy/paste complete Locations containing Dashboards without manually re-assigning all Links.

.. only:: not latex

    |

Move Dashboards
--------------------
|icon-move| Moving a Dashboard within a Workspace will keep existing links. Moving a Dashboard between Workspaces will invalidate any Link where the linked node is not available in the destination Workspace.

.. only:: not latex

    |

Link error
-----------
|icon-warning| If a linked Node is removed or not accessible after a copy/paste or move operation then the Tile will display the Link error icon to indicate a problem with one or more Links. Links can be removed or reconfigured from the Links section in the Tile properties dialog.

.. raw:: latex

    \newpage

.. _node-configuration-dashboard:

Dashboard
=========
|icon-dash| Dashboards allow users to create customized views of their data in visually appealing layouts using animated gauges, charts, lists, maps and other graphical controls.

Dashboards contain user configurable tiles which can be linked to Nodes to display your important data in real-time with live updates.
Tile layout is automatically adjusted to best suit your display device.

.. only:: not latex

    .. image:: dash_layout.png
        :scale: 50 %

    | 

.. only:: latex

	| 

    .. image:: dash_layout.png


Add tile
--------
|icon-dash-tile| Click the Add tile button from the Toolbar to open the Tile library. Select the type of Tile you would like to add from the presets or click cancel to close the dialog.

.. only:: not latex

    .. image:: dash_tile_library.png
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: dash_tile_library.png


Tile operations
----------------
Moving the mouse over or touching a tile will show the title bar and menu button to users with *Configure* permission.

.. only:: not latex

    .. image:: dash_tile_operations.png
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_operations.png
    	:scale: 30 %

Reposition
~~~~~~~~~~
Click or Touch, hold and drag the title bar to reposition the Tile on the Dashboard. Tile layout is automatically adjusted to suit the display device and tiles are always ordered in rows starting from the top left to bottom right of the screen. Requires *Configure* permission.

.. only:: not latex

    .. image:: dash_tile_reposition.png
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_reposition.png
    	:scale: 30 %

Resize
~~~~~~
Click or Touch, hold and drag the resize handle to adjust the width and height of the Tile. Requires *Configure* permission.

.. only:: not latex

    .. image:: dash_tile_resize.png
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_resize.png
    	:scale: 30 %

Rename
~~~~~~
|icon-rename| Select *Rename* from the tile menu to update or remove the Tile label.

.. only:: not latex

    .. image:: dash_tile_rename.png
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_rename.png
    	:scale: 30 %

Delete
~~~~~~
|icon-remove| Delete the Tile from the Dashboard.

Duplicate
~~~~~~~~~
|icon-copy| Duplicate the current Tile and its configuration.

Properties
~~~~~~~~~~
|icon-properties| Configure the Tile properties to change General display settings and Links.

General
`````````
The general section allows you to configure layout and display options for the Tile. Certain types of Tiles have specific options. For example the Historic Chart tile includes Period and Zoom settings while most other Tiles have selectable color styles and alarm options.

.. only:: not latex

    .. image:: dash_tile_properties_general.png
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_properties_general.png
    	:scale: 70 %


Links
``````
Links assign Nodes in the Workspaces Tree to Tiles so the corresponding data can be displayed and updated live.
Each type of Tile may enforce specific Link requirements. For example the Location map tile can only be linked to a single Location Node. Some tiles allow for multiple links to be assigned. The link label is user configurable and displayed on certain tiles. ie. Historic chart legend, etc.

Dashboard tiles can not be linked to Nodes in a different Workspace.

You can *Change* the linked Node or Click the *x* to remove the link completely. Use the *Add link* button to display the Workspaces Tree and select a new Node to link.

.. only:: not latex

    .. image:: dash_tile_properties_links.png
        :scale: 50 %

    | 

.. only:: latex

	| 

    .. image:: dash_tile_properties_links.png


Drag and Drop Links
--------------------
Nodes can be dragged with a mouse directly from the Workspaces Tree and dropped onto applicable Tiles (indicated with drop-accept and drop-blocked mouse cursor icons).

.. only:: not latex

    .. image:: dash_tile_link_drag.png
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_link_drag.png
    	:scale: 30 %


.. only:: not latex

    .. image:: dash_tile_link_drop.png
        :scale: 50 %

    | 

.. only:: latex

    .. image:: dash_tile_link_drop.png
    	:scale: 30 %

Copy/Paste Dashboards
--------------------------
|icon-paste| Copy/Paste operations can be performed from the Workspaces Tree to quickly duplicate one or more dashboards. Links are automatically re-assigned to corresponding Nodes relative to the Dashboard in the destination where they exist. ie. You can copy/paste complete Locations containing Dashboards without manually re-assigning all Links.

Move Dashboards
--------------------
|icon-move| Moving a Dashboard within a Workspace will keep existing links. Moving a Dashboard between Workspaces will invalidate all Links.

Link error
-----------
|icon-warning| If a linked Node is removed or not accessible after a copy/paste or move operation then the Tile may display the Link error icon to indicate a problem with one or more Links. Links can be removed or reconfigured from the Links section in the Tile properties dialog.

.. raw:: latex

    \newpage

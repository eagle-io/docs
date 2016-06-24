.. _view-map:

Map
==========
|icon-map| Map provides a fully featured interactive interface for displaying location based data.

.. note::
	The view displays content based on the Selected Node in the Workspaces Tree. Use filters to quickly target specific parameters or review alarms.

.. only:: not latex

	.. image:: map_overview.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: map_overview.jpg

.. only:: not latex

    |

Map styles
-----------
Use the style controls in the top-left corner of the map to change the map appearance.
Toggle between Map, Satellite and Terrain styles.

.. only:: not latex

	.. image:: map_controls_style.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: map_controls_style.jpg
		:scale: 35 %

.. only:: not latex

    |

.. _view-map-layers:

Map layers
--------------
Use the Map layers toolbar menu to quickly show or hide KML (and KMZ) files that have been associated with Workspace(s). 
The menu will display layers based on your current selection in the :ref:`Workspaces Tree <workspaces_tree>`. Refer to :ref:`Workspaces configuration <node-configuration-workspace-maplayers>` for help with adding or removing map layers.

.. only:: not latex

	.. image:: map_controls_layers.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: map_controls_layers.jpg
		:scale: 35 %

Example KML layer displayed on map:

.. only:: not latex

	.. image:: map_controls_layers_example.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: map_controls_layers_example.jpg
		:scale: 100 %

.. note:: A maximum of 10 unique layers can be shown on the map at any one time. Additional layers can be shown only after another layer has been hidden.

.. only:: not latex

    |

Zoom and Pan
-------------
Use the standard Google Map controls to Zoom/Pan or enter Street View. You can also use your mouse wheel or pinch gestures to zoom.
The appearance and layout of the map controls many vary depending on the type of device you are using.

.. only:: not latex

    |

Click and Hover
----------------
Hover over a Location icon with a mouse to quickly show its parameters. Click or Touch the Location to pin the parameters list open or closed. 

.. only:: not latex

	.. image:: map_location_parameters.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: map_location_parameters.jpg
		:scale: 35 %

.. only:: not latex

    |

Filters
--------
Use filters to quickly show locations of interest.

**Alarms Filter** will show only the Locations within the Selected Node that are currently in alarm or acknowledged state (including any contained Nodes).

**Parameter Filters** will show only the Locations within the Selected Node that contain parameters matching the filter name(s). Both Alarms and Parameter Filters can be combined.

.. only:: not latex

	.. image:: map_filters.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: map_filters.jpg
		:scale: 35 %

The show/hide filtered locations button found in the toolbar can be used to toggle the display of filtered locations. When active you will notice any filters locations are displayed with just a *GREY* marker and no label. You can still hover or click these filtered locations to display the parameters list.

.. only:: not latex

	.. image:: map_controls_filter.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: map_controls_filter.jpg
		:scale: 35 %

.. raw:: latex

    \newpage

*Map with filters applied*

.. only:: not latex

	.. image:: map_filtered.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: map_filtered.jpg
		:scale: 70 %

When parameter filters are applied, the corresponding parameters for each applicable Location are automatically displayed. Hover or Click the locations to display all parameters. 

Locations containing alarms will have their marker displayed in *RED* If all alarms within a location have been acknowledged the marker will be displayed in *ORANGE*.

.. only:: not latex

    |

Reserved marker colors
-----------------------
These reserved marker colors temporarily overwrite the normal marker color:

.. only:: not latex

	*Active Alarm*

	.. image:: map_marker_alarm.jpg
		:scale: 50 %

	| 

	*Acknowledged Alarm*

	.. image:: map_marker_acknowledged.jpg
		:scale: 50 %

	| 

	*Filtered*

	.. image:: map_marker_filtered.jpg
		:scale: 50 %

	| 

.. only:: latex

	*Active Alarm*

	.. image:: map_marker_alarm.jpg
		:scale: 40 %

	*Acknowledged Alarm*

	.. image:: map_marker_acknowledged.jpg
		:scale: 40 %

	*Filtered*

	.. image:: map_marker_filtered.jpg
		:scale: 40 %

.. only:: not latex

    |

Adding a new Location marker
-----------------------------
|icon-location-add| Use the *Add Location* button in the toolbar or from the map context menu with a right-click or long-press on the map. The Add Location dialog will be displayed showing all locations within the Selected Node that have not been assigned coordinates.

.. raw:: latex

    \newpage
    
*Map context menu*

.. only:: not latex

	.. image:: map_contextmenu.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: map_contextmenu.jpg
		:scale: 35 %

*Add Location dialog*

.. only:: not latex

	.. image:: map_location_add_dialog.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: map_location_add_dialog.jpg
		:scale: 70 %

*Drag and Drop* Locations directly from the Workspaces Tree (not supported on touch devices).

.. only:: not latex

	.. image:: map_location_add_dragdrop.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	.. image:: map_location_add_dragdrop.jpg

.. only:: not latex

    |

Reposition marker
-----------------
|icon-move| Select *Reposition marker* from the map marker context menu to enter reposition mode. The marker will be shown with a bouncing effect while in reposition mode. Drag and drop the marker and pan/zoom the map until the marker is in the correct position. click or touch on the map background to apply the new coordinates. 

.. only:: not latex

	.. image:: map_location_reposition.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: map_location_reposition.jpg
		:scale: 35 %

.. only:: not latex

    |

Remove marker
-------------
|icon-remove| Select *Remove marker* from the map marker context menu to remove the marker from the map.
This operation resets the location coordinates only. It will not delete the Location Node or any historic data.

.. note::
	The Location must use Fixed Coordinates and you must have *configure* permission for the Workspace to Add, Reposition or Remove the marker. Locations with Dynamic Coordinates will automatically be added, repositioned and removed as the Source receives updates.

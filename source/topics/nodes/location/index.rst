.. meta::
   :description: On our system, locations are special containers used to associate data with a geographical location. Configure properties via the Workspaces Tree context menu or List View properties icon. Coordinates, map markers, zoom in and out, it's all here. 

.. _node-configuration-location:

Location
=========
|icon-location| Locations are special containers used to associate data with a geographical location.
Locations can be created inside Workspaces and Groups.

.. only:: not latex

    |

Properties
----------
.. include:: ../properties.rstx

.. only:: not latex

    |

General
~~~~~~~

Coordinates
	Locations require coordinates for them to be displayed in Map View. 
	The coordinates drop down displays a list of Sources (within the Location) that can be used to dynamically update the Location latitude and longitude. Select *Fixed Location* for manual positioning of the location on the map.

	.. only:: not latex

		.. image:: location_general_coordinates.png
			:scale: 50 %

	.. only:: latex
	
		.. image:: location_general_coordinates.png
			:scale: 70 %

Map Marker
	Select the color and style of the marker displayed on the map. Click the icon to reveal a drop down menu.

	.. only:: not latex

		.. image:: location_general_mapmarker.png
			:scale: 50 %

	.. only:: latex
	
		.. image:: location_general_mapmarker.png
			:scale: 35 %

Image
	Locations can have an image associated with them. The image can be static (uploaded by user), or dynamically updated with an Attachment Source (within the Location). Select *Fixed Image* to upload an image or choose an existing image attachment (within the Location).

	.. only:: not latex

		.. image:: location_general_image.png
			:scale: 50 %

	.. only:: latex

		.. image:: location_general_image.png
			:scale: 70 %

Image zoom/pan
	Fixed images can be zoomed and panned as required. Use the zoom slider to quickly zoom in/out and click or touch the image and drag around the preview container to pan.

	.. only:: not latex

		.. image:: location_general_imagepreview.png
			:scale: 50 %

	.. only:: latex

		.. image:: location_general_imagepreview.png
			:scale: 40 %

Quality Alarm
    See :ref:`Alarms and Notifications <quality-alarm>`.

.. only:: not latex

    |

Metadata
~~~~~~~~
Metadata provides a simple key/value data structure that can be used to store static information about the location. Values can be saved as Number or Text and are displayed in the Locations List View.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: location_metadata.jpg
		:scale: 50 %

	| 
	
.. only:: latex

	| 

	.. image:: location_metadata.jpg

.. only:: not latex

    |

Historic
~~~~~~~~
Click the *Delete* buttons and save to permanently remove all *historic coordinate data* or *events* for this Location node. 
Alternatively use the :ref:`Source Historic <node-configuration-datasource-file-historic>` section to delete historic data or events for a Data Source and its Parameters.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

    .. image:: location_historic.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: location_historic.jpg


.. only:: not latex

    |

.. _node-configuration-location-security:

Security
~~~~~~~~~~
.. include:: ../properties_node_security.rstx

.. raw:: latex

    \newpage

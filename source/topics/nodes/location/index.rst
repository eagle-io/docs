.. _node-configuration-location:

Location
=========
|icon-location| Locations are special containers used to associate data with a geographical location.
Locations can be created inside Workspaces and Groups.


Properties
----------
.. include:: ../properties.rstx


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

Metadata
~~~~~~~~
Metadata provides a simple key/value data structure that can be used to store static information about the location. Values can be saved as Number or Text and are displayed in the Locations List View.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: location_metadata.png
		:scale: 50 %

	| 
	
.. only:: latex

	| 

	.. image:: location_metadata.png


Historic
~~~~~~~~
Use the *Delete* button to permanently remove all historic coordinate data for this Location.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

    .. image:: location_historic.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: location_historic.png


.. raw:: latex

    \newpage


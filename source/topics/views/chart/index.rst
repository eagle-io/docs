Chart
=========
|icon-chart| Use the Chart View for reviewing your timeseries data in highly interactive charts. Choose to group data on charts by Location or Parameter type. Charts are displayed using the settings configured for each individual parameter. See :ref:`Parameter configuration <node-configuration-parameter>` for full details.

.. note::
	The view displays content based on the Selected Node in the Workspaces Menu. Use filters to quickly target specific parameters or review alarms.


Subviews
---------

Locations
~~~~~~~~~
Locations Subview displays a chart per Location. Any Parameters contained within the Location will be displayed on the same chart. If a Location does not contain any Parameters (or the Parameters have been filtered), no chart will be displayed.

.. only:: not latex

	.. image:: chart_locations.png
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: chart_locations.png


Parameters
~~~~~~~~~~
Parameters Subview displays a chart per Parameter (based on Parameter name). Useful for comparing Parameters of the same type across multiple Locations. Filters can be applied to reduce the number of charts and/or Parameters being displayed.

.. only:: not latex

	.. image:: chart_parameters.png
		:scale: 50 %

	| 

.. only:: latex

	| 
	
	.. image:: chart_parameters.png


Custom
~~~~~~
Custom Subview displays the customised Chart Nodes. This feature is currently not available.


.. _working-with-charts:

Working with charts
-------------------

Parameter Values
~~~~~~~~~~~~~~~~
Hover over a chart with the mouse cursor or touch part of the display area of a chart to display the value of the Parameters corresponding with the time on the x-axis.

Parameter values may be shown with aggregation applied - indicated with a duration and aggregate name in brackets immediately after the Parameter name. Aggregation is based on the date range of the chart data and the Parameter configuration settings. See :ref:`Parameter configuration <node-configuration-parameter>` for full details.

.. only:: not latex
	
	.. image:: chart_values.png
		:scale: 50 %

	| 

.. only:: latex

	| 
	
	.. image:: chart_values.png
		:scale: 50 %


Adjust Height
~~~~~~~~~~~~~
Drag any of the horizontal bars that separate the charts Up or Down to decrease or increase the height of all displayed charts.
This option is currently not available on touch devices.


Zoom
~~~~
Click and Drag (or pinch on touch devices) over the main chart area to zoom. As you zoom into the chart, higher resolution data is loaded for the selected period (depending on the parameter configuration settings).

Use the navigator located directly under the main chart area to pan the chart or zoom in/out.

.. only:: not latex

	*Chart area selected for zoom*

	.. image:: chart_zoom.png
		:scale: 50 %

	| 

	*Chart after zoom*

	.. image:: chart_zoomed.png
		:scale: 50 %

	| 

.. only:: latex

	*Chart area selected for zoom*

	.. image:: chart_zoom.png

	| 

	*Chart after zoom*

	.. image:: chart_zoomed.png


Toggle Parameter display
~~~~~~~~~~~~~~~~~~~~~~~~
Click or touch the parameters in the legend above the main chart area to temporarily show/hide the corresponding trends. The chart y-axis automatically scales based on the visible parameters.

.. only:: not latex

	.. image:: chart_toggle_parameters.png
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: chart_toggle_parameters.png

Save as image
~~~~~~~~~~~~~
|icon-download| Save the chart as an image by clicking or touching the download chart button at the top of the chart. The image may be saved automatically or opened in a new window, depending on your web browser.


Toolbar Controls
----------------

|icon-calendar| Date range selector is used to quickly adjust the date range being shown on all charts. You can always zoom in on individual charts, but you cannot zoom out past the range set by this selector. Use Custom Range to select precise start/end dates.

.. only:: not latex

	.. image:: chart_rangeselector.png
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: chart_rangeselector.png
		:scale: 35 %

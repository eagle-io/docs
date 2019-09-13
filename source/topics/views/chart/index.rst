.. meta::
   :description: Chart view is for reviewing time series data as highly interactive charts. Group data on charts by Location or Parameter type. Zoom, set, toggle and control subviews, parameters, height adjustments. Iot enabled environmental monitoring system for smart cities, air or water all depend on powerful, intuitive chart making

.. _view-chart:

Chart
=========
|icon-chart| Use the Chart View for reviewing your timeseries data as highly interactive charts. Choose to group data on charts by Location or Parameter type. Charts are displayed using the settings configured for each individual parameter. See :ref:`Parameter configuration <node-configuration-parameter>` for full details.

.. note::
	The view displays content based on the Selected Node in the Workspaces Tree. Use filters to quickly target specific parameters or review alarms.

.. only:: not latex

    |

Subviews
---------

Locations
~~~~~~~~~
Locations Subview displays a chart per Location. Any Parameters contained within the Location will be displayed on the same chart. If a Location does not contain any Parameters (or the Parameters have been filtered), no chart will be displayed.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: chart_locations.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: chart_locations.jpg

.. only:: not latex

    |

Parameters
~~~~~~~~~~
Parameters Subview displays a chart per Parameter (based on Parameter name). Useful for comparing Parameters of the same type across multiple Locations. Filters can be applied to reduce the number of charts and/or Parameters being displayed.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: chart_parameters.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 
	
	.. image:: chart_parameters.jpg

.. only:: not latex

    |

Custom
~~~~~~
Custom Subview displays a list of pre-configured :ref:`custom charts <node-configuration-chart>`.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: chart_custom.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 
	
	.. image:: chart_custom.jpg

.. only:: not latex

    |

.. _working-with-charts:

Working with charts
-------------------

Parameter Values
~~~~~~~~~~~~~~~~
Hover over a chart with the mouse cursor or touch part of the display area of a chart to display the value of the Parameters corresponding with the time on the x-axis.

Parameter values may be shown with aggregation applied - indicated with a duration and aggregate name. Aggregation is based on the date range of the chart data and the Parameter configuration settings. See :ref:`Parameter configuration <node-configuration-parameter>` for full details.

If you have assigned :ref:`quality codes <historic-quality>` to the data, the associated quality code and color is displayed on hover. 

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex
	
	.. image:: chart_values.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 
	
	.. image:: chart_values.jpg
		:scale: 50 %

.. only:: not latex

    |

Adjust Height
~~~~~~~~~~~~~
Use the grab handle in the bottom right corner of the chart to increase or decrease its height.
This option is currently not available on touch devices.

.. only:: not latex

    |

Zoom
~~~~
|icon-zoom-in| Click and Drag (or pinch on touch devices) over the main chart area to zoom. 
As you zoom into the chart, higher resolution data is loaded for the selected period (depending on the parameter configuration settings).

Use the navigator located directly under the main chart area to pan the chart or zoom in/out. 
After zooming in on a section of the chart the *zoom out* icon is displayed in the chart toolbar to reset the zoom range.

.. raw:: latex

    \newpage

.. only:: not latex

	*Chart area selected for zoom*

	.. image:: chart_zoom.jpg
		:scale: 50 %

	| 

	*Chart after zoom*

	.. image:: chart_zoomed.jpg
		:scale: 50 %

	| 

.. only:: latex

	*Chart area selected for zoom*

	.. image:: chart_zoom.jpg

	| 

	*Chart after zoom*

	.. image:: chart_zoomed.jpg

.. only:: not latex

    |

.. raw:: latex

    \newpage

Toggle Parameter display
~~~~~~~~~~~~~~~~~~~~~~~~
|icon-point-number-range| Click the parameter icon to quickly toggle the visibility of all parameters. Click parameters in the chart legend to toggle the visibility of individual parameters.

.. only:: not latex

	.. image:: chart_toggle_parameters.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: chart_toggle_parameters.jpg


Change date range
~~~~~~~~~~~~~~~~~~
|icon-calendar| Date range selector is used to quickly adjust the date range being shown on all charts. You can always zoom in on individual charts, but you cannot zoom out past the range set by this selector. Use Custom Range to select precise start/end dates.

.. only:: not latex

	.. image:: chart_rangeselector.jpg
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: chart_rangeselector.jpg
		:scale: 35 %

| 

Filter data on quality
~~~~~~~~~~~~~~~~~~~~~~~
|icon-filter| Filter the dataset by selecting :ref:`quality codes <historic-quality>` associated with the data points that you want to include. 
While editing data, *apply* filters to automatically select associated data points and temporarily hide filtered data points to prevent modification. 

.. only:: not latex

    .. image:: chart_filters.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: chart_filters.jpg
        :scale: 50 %


| 

Print or save chart as image
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
|icon-menu| The dropdown menu allows you to print or save the chart as an image.

| 

Edit chart data
~~~~~~~~~~~~~~~~
|icon-customise| Use this feature to toggle into data editing mode and display the data editing toolbar. 
Please refer to the :ref:`data editing <historic-chart-editing>` documentation for further details.

.. only:: not latex

    .. image:: chart_edit_toolbar.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: chart_edit_toolbar.jpg
        :scale: 100 %

| 

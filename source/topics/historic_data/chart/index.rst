Chart
======

|icon-chart| Historic chart is accessible from the List View toolbar and Node context menus. The Historic Chart provides the same functionality as the charts displayed in :ref:`Chart View <view-chart>` but can be displayed directly from the Workspaces Tree, Map or List View without navigating away from your current view.

Use the date range selector below the chart to adjust the date range being shown on the chart.
Refer to :ref:`working with charts <working-with-charts>` for full details on chart interaction and functionality.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

    .. image:: historic_chart.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_chart.png
        :scale: 100 %


By default only the first 15 parameters will be displayed. Use the *Parameter selection* panel accessible via the arrow on the right to refine your selection and change how the data should be displayed, including any aggregate calculations to be applied.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: ../historic_parameter_selection.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ../historic_parameter_selection.png
        :scale: 40 %

Auto/Custom
    *Auto* will use the default chart options for each parameter (as configured in parameter properties).

    *Custom* allows you to specify custom display settings for each parameter. These settings are shared between table and exports for convenience.
Display type
    *Value* displays the parameter values.
    
    *State* displays the state name associated with each value.
Aggregate
    Aggregates provide a method to resample raw data over a specified period. See the :ref:`list of available aggregates <historic-aggregates>` for full details. Select RAW to display the original raw data with no aggregation applied (Interval and Base time options will be hidden).
Interval
    Specify the data range that is included for each calculated value. Example *30M* will calculate a value for each 30 minute window of data.
Base time
    Base time is used to determine the start of the aggregate calculations. Example *D+9H* will start the calculations at 9am (start of current day + 9 hours). See :ref:`working with relative time <relative-time>` for full details.

.. note:: 
    Please be aware that displaying RAW data for a large time range may be time consuming to retrieve and process.
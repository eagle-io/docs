.. _node-configuration-parameter:

Parameter
==========
|icon-point-number-range| Parameters are managed by and contained within Data Sources. Parameters store the individual timeseries acquired by its Data Source. There are a few different types of parameters but essentially they support Monitoring or Controlling of values.

Types of Parameters
-------------------

.. only:: not latex

    |icon-point-number-range| Number Parameter
        Number Parameters store historic time series data in numeric format. By default they display the current or historic value(s).
        Parameters are managed by and are always contained in Data Sources.

    | 

    |icon-point-number-discrete| Number Parameter (State variation)
        Number Parameters can also be set to display the current or historic state rather than value. This is useful for Boolean or Discrete state data.

    | 

    |icon-point-number-range-control| Number Control Parameter
        Number Control Parameters are similar to Number Parameters however the value can be controlled by the user. Historic data represents the user control operations.

    | 

    |icon-point-number-discrete-control| Number Control Parameter (State variation)
        Number Control Parameters can also be set to display the current or historic state(s)

    | 

    |icon-point-text| Text Parameter
        Text Parameters store historic time series data in text format. They are useful when trying to capture events from log files or text-based data files.

    | 

    |icon-point-text-control| Text Control Parameter
        Text Control Parameters are similar to Text Parameters however the value can be controlled by the user. Historic data represents the user control operations.

    | 

    |icon-point-time| Time Parameter
        Time Parameters store historic time series data as timestamps. Note: Time Parameters can not be displayed on charts.

    | 

    |icon-point-time-control| Time Control Parameter
        Time Control Parameters are similar to Time Parameters however the value can be controlled by the user. Historic data represents the user control operations. Note: Time Parameters can not be displayed on charts.

    | 

.. only:: latex
    
    See :ref:`Nodes and Configuration <node-types>` for full list of Parameter types.
    

Properties
----------
.. include:: properties.rstx

.. note::
    Available options will vary based on Parameter type.

.. _node-configuration-parameter-general:

General
~~~~~~~~
The general section allows you to specifiy display settings for Number and Time Parameters.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: parameter_general.png
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: parameter_general.png

Display type
    Select how this parameter should be displayed by default:

    *Value* is the default display type for analog data.

    *State* can be used for digital or discrete data and displays the state associated with the value (rather than the value).

Units
    The units (suffix) to be displayed with the value or state.

Format
    Specify how the value should be formatted for display. 

    *Number Parameters* use this setting to set how many decimal places should be shown (leave empty to display the value with all included decimal places). *0* will always display a digit. *#* will only display a digit if it exists.

    *Time Parameters* use this setting to determine the formatting of the timestamp (leave empty to display timestamps in your default user time format). Select a preset format from the drop down list or specify a custom format using :ref:`time format tokens <time-format-tokens>`.


States
~~~~~~~~
You can associate data values with States if they fall within a specified range or match specific values (discrete).
Number Parameters can use either Range or Discrete states. Text and Time Parameters are limited to Discrete states only and do not display the States type drop down.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    *Range States*

    .. image:: parameter_states_range.png
        :scale: 50 %

    | 

    *Discrete States*

    .. image:: parameter_states_discrete.png
        :scale: 50 %

    | 

.. only:: latex

    | 

    *Range States*

    .. image:: parameter_states_range.png

    *Discrete States*

    .. image:: parameter_states_discrete.png


States Type
    Select the type of States most suitable to your data:

    *Range* is the default option for most analog data and allows you to define a State that covers a range of values. eg. 1-10 = LOW

    *Discrete* is most commonly used with digital data where a State represents a specific (or matching) value. eg. 0 = OFF, 1 = ON

Name 
    Assign a Name for each State. The *NORMAL* State (Range States) can not be renamed or removed.

Threshold
    Specify the value to use as the State threshold. States positioned above *NORMAL* will use this value as their lower threshold. States positioned below *NORMAL* will use this value as their upper threshold.

Match / Contains
    Specify the value to match (Number Parameters) or a value that is contained in the data (Text Parameters). Applies to Discrete states only.

Description
    Enter a description to save with the State.

Category, Notifications, Alarm
    Configure Alarm and Notification preferences. See :ref:`Alarms and Notifications <alarms-and-notifications>` for full details.


Add and Remove
    Use the *Add* button to add new States or click the 'x' to remove a specific State.

Reorder
    Hover over the States with a mouse to show the grab handle. Click and drag the grab handle to reorder the State in the list. When using Range States, only the *NORMAL* State can be repositioned.

    .. raw:: latex

        \vspace{-10pt}

    .. only:: not latex
        
        .. image:: parameter_states_reposition.png
            :scale: 50 %

        | 

    .. only:: latex

        | 
        
        .. image:: parameter_states_reposition.png


Chart
~~~~~~
Charts section allows you to configure the display style and formatting of the parameter when displayed in the Charts View or shown on the adhoc Historic Chart.

Style
``````
Select the chart type and display preferences.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex
        
    .. image:: parameter_chart_style.png
        :scale: 50 %

    | 

.. only:: latex

    | 
    
    .. image:: parameter_chart_style.png


Data
`````
Select the data and processing to be used.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex
        
    .. image:: parameter_chart_data.png
        :scale: 50 %

    | 

.. only:: latex

    | 
    
    .. image:: parameter_chart_data.png


Aggregation mode
    *Automatic*

        Automatic is the recommended option for fast loading charts and uses *Interpolated* (or *Start* where Display type is State) aggregate and automatic period selection based on zoom level.

    *Custom* 

        Custom allows you to specify exactly how data should be aggregated for display on the charts.

        Aggregate
            Aggregates provide a method to resample raw data over a specified period. See the :ref:`list of available aggregates <historic-aggregates>` for full details. Select RAW to display the original raw data with no aggregation applied (Interval and Base time options will be hidden).
        Period
            *Automatic* will change the period of the aggregate calculation based on the zoom level of the chart.
            *Fixed Period* lets you define a fixed Interval and Base time that will be applied regardless of the zoom level.
        Interval
            Specify the data range that is included for each calculated value. Example *30M* will calculate a value for each 30 minute window of data.
        Base time
            Base time is used to determine the start of the aggregate calculations. Example *D+9H* will start the calculations at 9am (start of current day + 9 hours). See :ref:`working with relative time <relative-time>` for full details.

    *Raw* 

        Raw does not perform any aggregation of data. This option should ONLY be used where you know the period to be displayed does not contain more than a thousand data points. Displaying high resolution raw data can impact on chart performance and in some cases may cause the chart to fail loading or have adverse affects on your web browser.


Customise
``````````
Select customisation options for chart appearance.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex
        
    .. image:: parameter_chart_customise.png
        :scale: 50 %

    | 

.. only:: latex

    | 
    
    .. image:: parameter_chart_customise.png

*Settings of Interest*

Color
    Select *Fixed Color* to specify a color(s) to use for this parameter or *Automatic* to have it auto-assigned. If the Chart Fill Style is set to *Gradient* then you can also set a Secondary color.

Line width
    Set to *Hidden* to hide the line completely. If the Fill Style is set to *NONE* then you should ensure the Marker size is set.

Marker position
    Step charts can be displayed with the marker Left, Center or Right of the step. Left is the default option.

Column placement
    Column Placement applies to Column Charts only and determine where the columns should be positioned in relation to the x-axis. Options include *On Ticks* and *Between Ticks*.

Marker size
    Data point markers are hidden by default (shown on hover), but can be set to always display by specifying a size between 1-6 (small-large).

State thresholds
    Select which State thresholds should be displayed on the chart:

    *Hidden* will not display any State thresholds.

    *All States* will display all configured States.

    *Alarm States Only* will only display States that have also been set to alarm.


.. _node-configuration-parameter-historic:

Historic
~~~~~~~~
Use the *Delete* button to permanently remove all historic data for this Parameter.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

    .. image:: parameter_historic.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: parameter_historic.png


Control
~~~~~~~~
The control section allows you to configure control options for Control Parameters.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: parameter_control.png
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: parameter_control.png


Restricted values
    Select what values are acceptable for control operations:

    *None* 

        None does not restrict the control value. User can enter any value of the same type as the parameter. eg. Number, Text, Time.
    
    *Range* 

        Range restricts Number Parameter control values with a minimum and maximum value.
    
    *States* 

        States restricts control values to the configured state threshold/match values. eg. ON / OFF.

Control Alarm
    See :ref:`Alarms and Notifications <control-alarm>`.

.. raw:: latex

    \newpage
    
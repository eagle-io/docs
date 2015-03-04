.. _node-configuration-chart:

Chart
=========
|icon-chart| Create various types of charts with customized functionality and appearance including historic charts with multiple y-axes and wind rose charts with configurable ranges.

To view custom charts navigate to :menuselection:`Chart View --> Custom`. You will see a list of all custom charts under the selected Node.
You can also display any pre-configured charts as a *Custom chart* tile on a :ref:`Dashboard <node-configuration-dashboard>`.


Properties
----------
|icon-properties| Configure properties via the Workspaces Tree' context menu. Requires *configure* permission.


General
~~~~~~~
The General section allows users to set the *Start range* and *End range* of the time series data to be displayed on the chart.
Select *Custom* to enter a specific :ref:`OPC relative time <relative-time>`.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: chart_general_range.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: chart_general_range.png
        :scale: 80 %


Optionally enter a description to be displayed on the chart below the title.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: chart_general_description.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: chart_general_description.png
        :scale: 80 %

| 

Axes (Historic chart)
~~~~~~~~~~~~~~~~~~~~~~
The Axes section allows users to customize the style and functionality of the X-axis and Y-axes of the chart.

X Axis
```````
Set the position of the x-axis (time) to display on the *Top* or *Bottom* of the chart

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: chart_historic_axes_xaxis.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: chart_historic_axes_xaxis.png
        :scale: 80 %


Y Axes
```````
You can create unlimited numbers of y-axes on the chart.

Click the *Edit* button to show and modify the configuration for each y-axes. Use the *Add Y axis* button to create a new axis. Axes can be removed via the dropdown menu (accessible by clicking the menu button on the top-right corner of the axis item). 

Drag and drop axes in the list to change their display order on the chart.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: chart_historic_axes_yaxes.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: chart_historic_axes_yaxes.png
        :scale: 80 %


.. note:: By default, links are automatically assigned to the first y-axis. You need to *Edit* each link and specify a *Y axis*.

| 

Axes (Wind rose chart)
~~~~~~~~~~~~~~~~~~~~~~
The Axes section allows users to customize the style and functionality of the chart axes.

Speed
```````
Set the *legend title* and *speed units* to be displayed on the chart and tooltips.
*Speed range colors* is set to *Automatic* by default. If you would like to overwrite colors for speed ranges you should select *Fixed* and *Edit* the specific ranges that require changes.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: chart_windrose_axes_speed.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: chart_windrose_axes_speed.png
        :scale: 80 %


Speed ranges
````````````
Click the *Edit* button to show and modify the configuration for each speed range including its lowest threshold limit. Use the *Add range* button to create new ranges. Ranges can be removed via the dropdown menu (accessible by clicking the menu button on the top-right corner of the range item). 

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: chart_windrose_axes_speedranges.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: chart_windrose_axes_speedranges.png
        :scale: 80 %

.. note:: Range items are automatically reordered based on threshold value.


Links
~~~~~~
Links assign Nodes in the Workspaces Tree to the chart so the corresponding data can be displayed and updated live.
Each type of Chart may enforce specific Link requirements. For example wind rose charts require speed and direction. Some charts allow for multiple links to be assigned. 

Click the *Edit* button to show and modify the configuration for each link. Use the *Add link* button to display the Workspaces Tree and select a new Node to link. Links can be removed via the dropdown menu (accessible by clicking the menu button on the top-right corner of the link item). 

Charts can not have links to Nodes in different Workspace and currently do not support the same nodes being linked more than once to the same chart.

Drag and drop links in the list to change their display order on the chart.


.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: chart_links.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: chart_links.png
        :scale: 80 %

| 

Drag and Drop Links
--------------------
Nodes can be dragged with a mouse directly from the Workspaces Tree and dropped onto applicable charts (indicated with drop-accept and drop-blocked mouse cursor icons).

.. only:: not latex

    .. image:: chart_link_drag.png
        :scale: 50 %

    | 

.. only:: latex

    .. image:: chart_link_drag.png
        :scale: 80 %


.. only:: not latex

    .. image:: chart_link_drop.png
        :scale: 50 %

    | 

.. only:: latex

    .. image:: chart_link_drop.png
        :scale: 80 %


Copy/Paste Charts
--------------------------
|icon-paste| Copy/Paste operations can be performed from the Workspaces Tree to quickly duplicate one or more charts. Links are automatically re-assigned to corresponding Nodes relative to the Chart in the destination where they exist. ie. You can copy/paste complete Locations containing Charts without manually re-assigning all Links.

Move Charts
--------------------
|icon-move| Moving a Chart within a Workspace will keep existing links. Moving a Chart between Workspaces will invalidate all Links.

.. raw:: latex

    \newpage

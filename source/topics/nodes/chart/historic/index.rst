.. _node-configuration-chart-historic:

Historic
===============
Historic charts allow for more customization then the default *Location* and *Parameter* charts available in :ref:`Chart View <view-chart>`.
You can create multiple y-axes with fixed or automatic scaling, change the data aggregation and styles of individual parameters and preset the default time range.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: chart_historic_example.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: chart_historic_example.jpg
        :scale: 80 %

.. only:: not latex

    |

Properties
----------
|icon-properties| Configure properties via the Workspaces Tree' context menu. Requires *configure* permission.

.. only:: not latex

    |

General
~~~~~~~
The General section allows a default *Start range* and *End range* to be set. This range will be used when the chart is initially displayed.
Choose a preset or *Custom OPC* for :ref:`relative time <relative-time>`. Select *Custom Fixed* for absolute time.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: ../chart_default_general_range.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: ../chart_default_general_range.jpg
        :scale: 80 %


Optionally enter a description to be displayed on the chart below the title.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: ../chart_default_general_description.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: ../chart_default_general_description.jpg
        :scale: 80 %

| 

Axes
~~~~~
The Axes section allows you to customize the style and functionality of the X-axis and Y-axes of the chart.

X Axis
```````
Set the position of the x-axis (time) to display on the *Top* or *Bottom* of the chart.

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
You can create unlimited y-axes to be displayed on the chart.

Click the *Edit* button to show and modify the configuration for each y-axes. Use the *Add Y axis* button to create a new axis. Axes can be removed via the dropdown menu (accessible by clicking the menu button on the top-right corner of the axis item). 

Y-axes can be *linear* with *automatic* or *fixed* minimum and maximum ranges or displayed with *logarithmic* scaling.

Drag and drop axes in the list to change their display order on the chart. 

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: chart_historic_axes_yaxes.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: chart_historic_axes_yaxes.jpg
        :scale: 80 %


.. note:: By default, links are automatically assigned to the first y-axis. You need to *Edit* each link and specify a *Y axis*.

| 

Links
~~~~~~
Links assign Nodes in the Workspaces Tree to the chart so the corresponding data can be displayed and updated live.

Click the *Edit* button to show and modify the configuration for each link. Use the *Add link* button to display the Workspaces Tree and select a new Node to link. Links can be removed via the dropdown menu (accessible by clicking the menu button on the top-right corner of the link item). 

Charts can not have links to Nodes in different Workspace and currently do not support the same nodes being linked more than once to the same chart.

Drag and drop links in the list to change their display order on the chart.

Refer to :ref:`Parameter chart configuration <node-configuration-parameter-chart>` for a description of all available settings.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: chart_historic_links.png
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: chart_historic_links.png
        :scale: 80 %

.. only:: not latex

    |

Security
~~~~~~~~~~
.. include:: ../../properties_node_security.rstx

| 

Drag and Drop Links
--------------------
Nodes can be dragged with a mouse directly from the Workspaces Tree and dropped onto applicable charts (indicated with drop-accept and drop-blocked mouse cursor icons).

.. only:: not latex

    .. image:: chart_historic_link_dragdrop.jpg
        :scale: 50 %

    | 

.. only:: latex

    .. image:: chart_historic_link_dragdrop.jpg
        :scale: 80 %

Copy/Paste Charts
--------------------------
|icon-paste| Copy/Paste operations can be performed from the Workspaces Tree to quickly duplicate one or more charts. Links are automatically re-assigned to corresponding Nodes relative to the chart if they exist at the destination. ie. You can copy/paste complete Locations containing charts without manually re-assigning all Links.

Move Charts
--------------------
|icon-move| Moving a chart within a Workspace will keep existing links. Moving a chart between Workspaces will invalidate any Link where the linked node is not available in the destination Workspace.

Link error
-----------
|icon-warning| If a linked Node is removed or not accessible after a copy/paste or move operation then the chart will display the Link error icon to indicate a problem with one or more Links. Links can be removed or reconfigured from the Links section in the chart properties dialog.

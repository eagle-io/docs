.. meta::
   :description: Wind Rose charts show how wind speed and direction are distributed at a particular location. Using a polar coordinate system of gridding, the frequency of winds over a time period is plotted by wind direction, color bands showing speed ranges, longest spoke showing greatest frequency.

.. _node-configuration-chart-windrose:

Wind Rose
================
Wind Rose charts provide a view of how wind speed and direction are typlically distributed at a particular location.

Using a polar coordinate system of gridding, the frequency of winds over a time period is plotted by wind direction, with color bands showing wind speed ranges. The direction of the longest spoke shows the wind direction with the greatest frequency.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: chart_windrose_example.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: chart_windrose_example.jpg
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
The Axes section allows you to customize the style and functionality of the chart including *Speed* and *Speed Ranges*.

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

.. only:: not latex

    |

Links
~~~~~~
Links assign Nodes in the Workspaces Tree to the chart so the corresponding data can be displayed and updated live.
Wind Rose charts require both *speed* and *direction* parameters (direction should contain numeric values between 0-360). 

Click the *Edit* button to show and modify the configuration for each link. Use the *change* button to display the Workspaces Tree and select a new Node to link. 

Charts can not have links to Nodes in different Workspace and currently do not support the same nodes being linked more than once to the same chart.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: chart_windrose_links.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: chart_windrose_links.jpg
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

.. note:: Parameters will be automatically assigned as either *speed* or *direction* based on parameter names. However you should review the *links* from the properties dialog to ensure correct assignment.

.. only:: not latex

    .. image:: chart_windrose_link_dragdrop.jpg
        :scale: 50 %

    | 

.. only:: latex

    .. image:: chart_windrose_link_dragdrop.jpg
        :scale: 80 %

Copy/Paste Charts
--------------------------
|icon-paste| Copy/Paste operations can be performed from the Workspaces Tree to quickly duplicate one or more charts. Links are automatically re-assigned to corresponding Nodes relative to the Chart if they exist at the destination. ie. You can copy/paste complete Locations containing charts without manually re-assigning all links.

Move Charts
--------------------
|icon-move| Moving a chart within a Workspace will keep existing links. Moving a chart between Workspaces will invalidate any Link where the linked node is not available in the destination Workspace.

Link error
-----------
|icon-warning| If a linked Node is removed or not accessible after a copy/paste or move operation then the chart will display the Link error icon to indicate a problem with one or more Links. Links can be removed or reconfigured from the Links section in the chart properties dialog.

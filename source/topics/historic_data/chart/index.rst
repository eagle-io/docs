.. meta::
   :description: The Historic Chart provides the same functionality as the charts displayed in Chart View but can be displayed directly from the Workspaces Tree, Map or List View without navigating away from your current view. The historic chart is accessible from the List View toolbar and Node context menus.

.. _historic-chart:

Chart
======

|icon-chart| Historic chart is accessible from the List View toolbar and Node context menus. The Historic Chart provides the same functionality as the charts displayed in :ref:`Chart View <view-chart>` but can be displayed directly from the Workspaces Tree, Map or List View without navigating away from your current view.

If you have assigned :ref:`quality codes <historic-quality>` to the data, the associated quality code and color is displayed on hover. 

Refer to :ref:`working with charts <working-with-charts>` for full details on chart interaction and functionality.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

    .. image:: historic_chart.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_chart.jpg
        :scale: 100 %

| 

Toolbar
--------

|icon-calendar| Range selector
    Use the range selector to adjust the date range being shown on the chart.

|icon-zoom-out| Zoom out
    After zooming in on a section of the chart the *zoom out* icon is displayed to reset the zoom range.

|icon-point-number-range| Toggle parameter visibility
    Click the parameter icon to quickly toggle the visibility of all parameters. Click parameters in the chart legend to toggle the visibility of individual parameters.

.. _historic-chart-toolbar-filters: 

|icon-filter| Filters
    Filter the dataset by selecting :ref:`quality codes <historic-quality>` associated with the data points that you want to include. 
    While editing data, *apply* filters to automatically select associated data points and temporarily hide filtered data points to prevent modification. 

    .. only:: not latex

        .. image:: historic_chart_filters.jpg
            :scale: 50 %

    .. only:: latex
        
        | 

        .. image:: historic_chart_filters.jpg
            :scale: 50 %

.. _historic-chart-toolbar-edit: 

|icon-customise| Edit data
    Use this feature to toggle into :ref:`data editing <historic-chart-editing>` mode and display the data editing toolbar. 

    .. only:: not latex

        .. image:: historic_chart_edit_toolbar.jpg
            :scale: 50 %

        | 

    .. only:: latex
        
        | 

        .. image:: historic_chart_edit_toolbar.jpg
            :scale: 100 %

    .. note::
        Users must have *edit data* or *edit quality & annotations* :ref:`permission <management-security-userroles>` for the parameters they are trying to edit. Data editing is not available on STARTER accounts.


|icon-menu| Menu
    Export options can be found in the dropdown menu including:

    |icon-print| Print the chart.

    |icon-image| Save the chart as an image.

| 

Parameter selection
--------------------
The historic data dialog will only display the first 15 selected parameters by default. 
Use the *Parameter selection* panel accessible via the arrow on the right to refine your selection and change how the data should be displayed, including any aggregate calculations to be applied.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: ../historic_parameter_selection.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ../historic_parameter_selection.jpg
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

| 

.. _historic-chart-editing:

Data editing
-------------
|icon-customise| The :ref:`edit data <historic-chart-toolbar-edit>` button toggles into data editing mode.

Users must have *edit data* or *edit quality & annotations* :ref:`permission <management-security-userroles>` for the parameters they are trying to edit. 
Data editing is not available on STARTER accounts. 

Historic data is always edited as raw unprocessed records without any :ref:`aggregate <historic-aggregates>` or :ref:`transform <node-configuration-parameter-general>` options applied. 
Data editing can also be performed in :ref:`tabular <historic-table-editing>` format.

.. note:: 
    All saved changes are permanent. 
    You should restrict access with the *edit data* user :ref:`permission <management-security-userroles>` and audit changes via the :ref:`events <view-events>` view. 
    :ref:`Limits <historic-limits-editing>` apply when editing historic data. 

The chart legend automatically updates with checkboxes next to parameters than can be edited. 
Only the first parameter is initially checked for editing. Check additional parameters to edit concurrently. 

.. only:: not latex

    .. image:: historic_chart_edit_legend.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_chart_edit_legend.jpg
        :scale: 50 %

| 

Selecting records
~~~~~~~~~~~~~~~~~~
|icon-selection| Click a series data point marker to select an individual record.

Selected data points are displayed with a yellow marker when the user has both *edit data* and *edit quality & annotations* permissions for the parameter. 
Alternatively a dark grey marker will be displayed when the user only has *edit quality & annotations* permission. 

While selecting records, hold the **shift key to add** or **alt key to remove** from the current selection.

.. only:: not latex

    .. image:: historic_chart_edit_select.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_chart_edit_select.jpg
        :scale: 100 %

Click and drag over the chart to quickly select multiple records.

.. only:: not latex

    .. image:: historic_chart_edit_multiselect.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_chart_edit_multiselect.jpg
        :scale: 100 %


.. only:: not latex

    .. image:: historic_chart_edit_multiselected.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_chart_edit_multiselected.jpg
        :scale: 100 %

Apply :ref:`filters <historic-chart-toolbar-filters>` to select records based on quality.

| 

Editing records
~~~~~~~~~~~~~~~~
An individual record can include **value**, **quality** and **annotation**.

Right-click on an editable data point or selection of data points to quickly perform operations via the chart context-menu.

.. only:: not latex

    .. image:: historic_chart_edit_contextmenu.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_chart_edit_contextmenu.jpg
        :scale: 50 %

| 

Set value
```````````
|icon-pencil| Enter a new value to be assigned to the selected data point(s) and press enter or click the *set value* icon.
Change the functionality of the value input by selecting a value operation from the dropdown menu.

Use *set value* to change all selected records to a specific value or *offset by value* to offset each record by a specific amount.

.. only:: not latex

    .. image:: historic_chart_edit_value.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_chart_edit_value.jpg
        :scale: 50 %

You can also use *set value* to unset a value (leave blank) which will result in historic charts showing a gap in the series when displaying RAW historic data.

Charts support *drag and drop* of selected data point(s) to free-hand edit record values. 

.. only:: not latex

    .. image:: historic_chart_edit_value_dragdrop.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_chart_edit_value_dragdrop.jpg
        :scale: 100 %

| 

Set quality
````````````
|icon-quality| Select a quality to be assigned to the selected data point(s) from the dropdown quality menu. 
You can only assign :ref:`quality codes <historic-quality>` that have been pre-configured in :ref:`account settings <management-general-qualitycodes>`.

.. only:: not latex

    .. image:: historic_chart_edit_quality.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_chart_edit_quality.jpg
        :scale: 50 %

| 

Set annotation
```````````````
|icon-info| To set an annotation for a single record either change to *annotate mode* from the edit toolbar and click on a data point 
or right-click on a data point and select *annotate* from the context menu. 

Annotations can be set on multiple data points at once by first selecting the data point then selecting *annotate* from the context menu.

.. only:: not latex

    .. image:: historic_chart_edit_annotation_dialog.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_chart_edit_annotation_dialog.jpg
        :scale: 50 %

Hover or click the annotation icon to display the annotation text.

.. only:: not latex

    .. image:: historic_chart_edit_annotation.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_chart_edit_annotation.jpg
        :scale: 50 %

To remove an annotation clear the text in the annotation entry dialog or right-click on the annotation icon and select 
*remove annotation* from the context menu.

.. only:: not latex

    .. image:: historic_chart_edit_annotation_contextmenu.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_chart_edit_annotation_contextmenu.jpg
        :scale: 50 %

| 

Delete record
``````````````
|icon-remove| The delete operation permanently removes the selected records from the historic dataset.

| 

Undo last edit
```````````````
|icon-undo| The *undo* command reverts the last edit operation. You can continue to *undo* all edit operations since the last save.

| 

Save changes
````````````
Save all changes to the modified records. 

.. note:: All saved changes are permanent. You should restrict access with the *edit data* user :ref:`permission <management-security-userroles>` and audit changes via the :ref:`events <view-events>` view.


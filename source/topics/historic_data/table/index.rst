.. meta::
   :description: Historic table is accessible from the List View toolbar and Node context menus. The most recent data is always displayed first. Scroll down to automatically load older data. The timestamps are always displayed in your preferred timezone and time format.

.. _historic-table:

Table
=======
|icon-table| Historic table is accessible from the List View toolbar and Node context menus. The most recent data is always displayed first. Scroll down to automatically load older data or use the *Jump to date* control to quickly move to a specific date.

The :term:`timestamps <timestamp>` are always displayed in your preferred timezone and time format. See configuring :ref:`user preferences <user-preferences>` for full details.

If you have assigned :ref:`quality codes <historic-quality>` to the data the associated quality color is displayed in the table cell(s). 
Move your mouse over a table cell to display its corresponding quality code and description in the toolbar.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: historic_table.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: historic_table.jpg
		:scale: 100 %

.. note:: 
	Historic data for all parameters being displayed is automatically interleaved, therefore you may notice empty cells where the parameter(s) do not have a value for the corresponding row timestamp.

| 

Toolbar
--------
.. _historic-table-toolbar-filters: 

|icon-filter| Filters
	Filter the dataset by selecting :ref:`quality codes <historic-quality>` associated with the data points that you want to include. 
	While editing data, *apply* filters to automatically select associated data points and temporarily disable filtered data point cells to prevent modification. 

	.. only:: not latex

		.. image:: historic_table_filters.jpg
			:scale: 50 %

	.. only:: latex
		
		| 

		.. image:: historic_table_filters.jpg
			:scale: 70 %

.. _historic-table-toolbar-edit: 

|icon-customise| Edit data
	Use this feature to toggle into :ref:`data editing <historic-table-editing>` mode and display the data editing toolbar. 

	.. only:: not latex

		.. image:: historic_table_edit_toolbar.jpg
			:scale: 50 %

		| 

	.. only:: latex
		
		| 

		.. image:: historic_table_edit_toolbar.jpg
			:scale: 100 %

	.. note::
		Users must have *edit data* or *edit quality & annotations* :ref:`permission <management-security-userroles>` for the parameters they are trying to edit. Data editing is not available on STARTER accounts.

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

Display type
	*Value* displays the parameter values.
	
	*State* displays the state name associated with each value.
Aggregate
	Aggregates provide a method to resample raw data over a specified period. See the :ref:`list of available aggregates <historic-aggregates>` for full details. Select RAW to display the original raw data with no aggregation applied (Interval and Base time options will be hidden).
Interval
	Specify the data range that is included for each calculated value. Example *30M* will calculate a value for each 30 minute window of data.
Base time
	Base time is used to determine the start of the aggregate calculations. Example *D+9H* will start the calculations at 9am (start of current day + 9 hours). See :ref:`working with relative time <relative-time>` for full details.

| 

.. _historic-table-editing:

Data editing 
-------------
|icon-customise| The :ref:`edit data <historic-table-toolbar-edit>` button toggles into data editing mode.

Users must have *edit data* or *edit quality & annotations* :ref:`permission <management-security-userroles>` for the parameters they are trying to edit. Data editing is not available on STARTER accounts. 
Table cells or records with a light grey background can not be selected or modified. 

Historic data is always edited as raw unprocessed records without any :ref:`aggregate <historic-aggregates>` or :ref:`transform <node-configuration-parameter-general>` options applied. 
Data editing can also be performed in :ref:`historic charts <historic-chart-editing>`.

.. note:: 
	All saved changes are permanent. 
	You should restrict access with the *edit data* user :ref:`permission <management-security-userroles>` and audit changes via the :ref:`events <view-events>` view. 
	:ref:`Limits <historic-limits-editing>` apply when editing historic data. 

| 

Selecting records
~~~~~~~~~~~~~~~~~~
|icon-selection| Click a table cell to select an individual record or click a timestamp to select an entire row.

Selected cells are displayed with a yellow background when the user has both *edit data* and *edit quality & annotations* permissions for the parameter. 
Alternatively a dark grey background will be displayed when the user only has *edit quality & annotations* permission. 

While selecting records, hold the **shift key to add** or **alt key to remove** from the current selection.

.. only:: not latex

	.. image:: historic_table_edit_select.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: historic_table_edit_select.jpg
		:scale: 100 %

Click and drag over the table to quickly select multiple records.

.. only:: not latex

	.. image:: historic_table_edit_multiselect.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: historic_table_edit_multiselect.jpg
		:scale: 100 %

Apply :ref:`filters <historic-table-toolbar-filters>` to select records based on quality.

| 

Editing records
~~~~~~~~~~~~~~~~
An individual record can include **value**, **quality** and **annotation**.

Right-click on an editable cell or selection of cells to quickly perform operations via the cell context-menu.

.. only:: not latex

	.. image:: historic_table_edit_contextmenu.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: historic_table_edit_contextmenu.jpg
		:scale: 50 %

| 

Set value
```````````
|icon-pencil| Enter a new value to be assigned to the selected cell(s) and press enter or click the *set value* icon.
Change the functionality of the value input by selecting a value operation from the dropdown menu.

Use *set value* to change all selected records to a specific value or *offset by value* to offset each record by a specific amount.

.. only:: not latex

	.. image:: historic_table_edit_value.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: historic_table_edit_value.jpg
		:scale: 50 %

You can also use *set value* to unset a value (leave blank) which will result in historic charts showing a gap in the series when displaying RAW historic data.

| 

Set quality
````````````
|icon-quality| Select a quality to be assigned to the selected cell(s) from the dropdown quality menu. 
You can only assign :ref:`quality codes <historic-quality>` that have been pre-configured in :ref:`account settings <management-general-qualitycodes>`.

.. only:: not latex

	.. image:: historic_table_edit_quality.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: historic_table_edit_quality.jpg
		:scale: 50 %

| 

Set annotation
```````````````
|icon-info| To set an annotation for a single record either change to *annotate mode* from the edit toolbar and click on a cell 
or right-click on a cell and select *annotate* from the context menu. 

Annotations can be set on multiple cells at once by first selecting the cells then selecting *annotate* from the context menu.

.. only:: not latex

	.. image:: historic_table_edit_annotation_dialog.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: historic_table_edit_annotation_dialog.jpg
		:scale: 50 %

Hover or click the annotation icon to display the annotation text.

.. only:: not latex

	.. image:: historic_table_edit_annotation.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: historic_table_edit_annotation.jpg
		:scale: 50 %

To remove an annotation clear the text in the annotation entry dialog or right-click on the cell annotation icon and select 
*remove annotation* from the context menu.

.. only:: not latex

	.. image:: historic_table_edit_annotation_contextmenu.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: historic_table_edit_annotation_contextmenu.jpg
		:scale: 50 %

| 

Remove record
``````````````
|icon-remove| The remove operation deletes the selected records from the historic dataset.

| 

Undo last edit
```````````````
|icon-undo| The *undo* command reverts the last edit operation. You can continue to *undo* all edit operations since the last save.

| 

Save changes
````````````
Save all changes to the modified records. 

.. note:: All saved changes are permanent. You should restrict access with the *edit data* user :ref:`permission <management-security-userroles>` and audit changes via the :ref:`events <view-events>` view.

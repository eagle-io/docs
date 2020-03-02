.. meta::
   :description: Data editing allows for the modification of your historic data directly from the user interface in historic chart and table formats.

.. _historic-data-editing:

Editing
==========
|icon-customise| Data editing allows for the modification of your historic data directly from the user interface 
in :ref:`historic table <historic-table-editing>` and :ref:`historic chart <historic-chart-editing>` formats. 

Historic data is always edited as raw unprocessed records without any :ref:`aggregate <historic-aggregates>` or :ref:`transform <node-configuration-parameter-general>` options applied. 
Records can be modified individually or as a selection including:

|icon-point-number-range| Value
	Record values can be adjusted to remove spikes or apply offsets. 

|icon-quality| Quality 
	:ref:`Quality codes <historic-quality>` can be assigned to validate data or :ref:`filter <historic-chart-toolbar-filters>` records from display. 

|icon-info| Annotation
	:ref:`Annotations <historic-annotations>` can be added to provide context to specific events.


Users must have *edit data* or *edit quality & annotations* :ref:`permission <management-security-userroles>` for the parameters they are trying to edit. 
Data editing is not available on STARTER accounts. Record :ref:`limits <historic-limits-editing>` apply when editing data in chart format.

.. note:: 
    All saved changes are permanent. 
    You should restrict access with the *edit data* user :ref:`permission <management-security-userroles>` and audit changes via the :ref:`events <view-events>` view. 
    
| 

.. note:: 
    :ref:`Process Parameters <process-parameter>` cannot be edited, as the data is generated dynamically whenever the process code is changed. 
    
| 

Refer to the :ref:`historic chart <historic-chart-editing>` documentation for data editing in chart format.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: historic_editing_chart.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: historic_editing_chart.jpg
		:scale: 100 %

| 

Refer to the :ref:`historic table <historic-table-editing>` documentation for data editing in tabular format.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

	.. image:: historic_editing_table.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: historic_editing_table.jpg
		:scale: 100 %

| 

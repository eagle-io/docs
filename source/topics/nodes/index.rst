.. _nodes-and-configuration:

Nodes and Configuration
=======================

Nodes are the container objects that store all data and configuration for your projects. The following types of Nodes are available:

.. only:: not latex

    |
    
.. _node-types:

|icon-workspace| Workspaces
	:ref:`Workspaces <node-configuration-workspace>` are special container Nodes that can be shared with other users. All other Nodes are created within the Workspace. Workspaces can only be created by the Account Owner or Administrators. 

.. only:: not latex
	
	| 

|icon-group| Group
	Groups are simple nodes that provide structure to your Workspaces. You may choose to group content by geography or related purpose. Groups can be created inside Workspaces, Locations and other Groups.

.. only:: not latex
	
	| 

|icon-location| Location
	:ref:`Locations <node-configuration-location>` are special containers used to associate data with a geographical location.
	Locations can be created inside Workspaces and Groups.

.. only:: not latex
	
	| 

|icon-chart| Chart
	Create various types of :ref:`charts <node-configuration-chart>` with customized functionality and appearance including historic charts with multiple y-axes and wind rose charts with configurable ranges.

.. only:: not latex
	
	| 

|icon-dash| Dashboard
	:ref:`Dashboards <node-configuration-dashboard>` allow users to create customized views of their data in visually appealing layouts using animated gauges, charts, lists, maps and other graphical controls.

.. only:: not latex
	
	| 

|icon-attachment| Attachment
	:ref:`Attachments <node-configuration-attachment>` include images, documents and other files stored in eagle.io. New attachments can be uploaded manually by a user or acquired via an Attachment Source.
	Attachments can be added inside Workspaces, Locations, Groups and Attachment Sources.

.. only:: not latex
	
	| 

|icon-attachmentsource| Attachment Source
	:ref:`Attachment Sources <node-configuration-attachmentsource>` have the ability to automatically acquire or receive Attachments. Attachment Sources can be created inside Locations only.

.. only:: not latex
	
	| 

|icon-datasource| Data Source
	:ref:`Data Sources <node-configuration-datasource-datalogger>` automatically acquire or receive timeseries data using a variety of different transport options. Connect to a :term:`data logger` or collect data from files. Data Sources can be created inside Locations only.

.. only:: not latex
	
	| 

|icon-point-number-range| Number Parameter
	Number :ref:`Parameters <node-configuration-parameter>` store historic time series data in numeric format. By default they display the current or historic value(s).
	Parameters are managed by and are always contained in Data Sources.

.. only:: not latex
	
	| 

|icon-point-number-discrete| Number Parameter (State variation)
	Number :ref:`Parameters <node-configuration-parameter>` can also be set to display the current or historic state rather than value. This is useful for Boolean or Discrete state data.

.. only:: not latex
	
	| 

|icon-point-number-range-control| Number Control Parameter
	Number Control :ref:`Parameters <node-configuration-parameter>` are similar to Number Parameters however the value can be controlled by the user. Historic data represents the user control operations.

.. only:: not latex
	
	| 

|icon-point-number-discrete-control| Number Control Parameter (State variation)
	Number Control :ref:`Parameters <node-configuration-parameter>` can also be set to display the current or historic state(s)

.. only:: not latex
	
	| 

|icon-point-text| Text Parameter
	Text :ref:`Parameters <node-configuration-parameter>` store historic time series data in text format. They are useful when trying to capture events from log files or text-based data files.

.. only:: not latex
	
	| 

|icon-point-text-control| Text Control Parameter
	Text Control :ref:`Parameters <node-configuration-parameter>` are similar to Text Parameters however the value can be controlled by the user. Historic data represents the user control operations. Please note: Text Control Parameters for Campbell Scientific data loggers currently do not support Control operations.

.. only:: not latex
	
	| 

|icon-point-time| Time Parameter
	Time :ref:`Parameters <node-configuration-parameter>` store historic time series data as timestamps. Note: Time Parameters can not be displayed on charts.

.. only:: not latex
	
	| 

|icon-point-time-control| Time Control Parameter
	Time Control :ref:`Parameters <node-configuration-parameter>` are similar to Time Parameters however the value can be controlled by the user. Historic data represents the user control operations. Note: Time Parameters can not be displayed on charts.

.. raw:: latex

    \newpage
    
.. toctree::
   :hidden:

   workspace/index
   location/index
   chart/index
   dashboard/index
   attachment/index
   attachmentsource/index
   datasource_file/index
   datasource_datalogger/index
   parameter/index

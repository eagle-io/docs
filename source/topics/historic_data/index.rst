.. meta::
   :description: Eagle.io supports the acquisition and storage of up to 20000 records per Data Source per day. Data is  stored in raw format together with optional data quality information. Display and export the data. Big data mining for the environment.

.. _historic-data:

Historic Data
==============
|icon-history| Historic data is stored in a raw unprocessed format with an optional :ref:`quality code <historic-quality>` and :ref:`annotation <historic-annotations>`. 
Display, edit and export data in variety of :ref:`tabular <historic-table>` and :ref:`chart <node-configuration-chart>` formats.

Apply :ref:`historic aggregates <historic-aggregates>` to process the raw data and apply specific calculations 
or use :ref:`processing and logic <processing-and-logic>` for advanced statistical analysis and decision making.

Use the eagle.io :ref:`HTTP API <api>` to automate importing or extracting data.

:ref:`Data editing <historic-data-editing>` can be performed in both :ref:`historic table <historic-table-editing>` and :ref:`historic chart <historic-chart-editing>` formats.

Eagle.io supports the acquisition and storage of up to **20000 records per** :ref:`Data Source <node-configuration-datasource-datalogger>` **per day**. 
Exceeding the limit will trigger an :ref:`Overload Alarm <overload-alarm>` on the Source. Refer to Historic Data :ref:`Limits <historic-limits>` for more information.


.. toctree::
   :maxdepth: 2

   editing/index
   table/index
   chart/index
   export/index
   import/index
   

| 

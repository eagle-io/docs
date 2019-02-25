.. meta::
   :description: Eagle.io supports the acquisition and storage of up to 20000 records per Data Source per day. Data is  stored in raw format together with optional data quality information. Display and export the data. Big data mining for the environment.

.. _historic-data:

Historic Data
==============

|icon-history| Eagle.io supports the acquisition and storage of up to **20000 records per** :ref:`Data Source <node-configuration-datasource-datalogger>` **per day**. 
Exceeding the limit will trigger an :ref:`Overload Alarm <overload-alarm>` on the Source. Refer to Historic Data :ref:`Limits <historic-limits>` for more information.

Data is always stored in a raw unprocessed format with optional quality information. 
You can display and export the data in tabular or chart format via the user interface in either raw or processed format. 

You can also use the eagle.io :ref:`HTTP API <api>` for importing or extracting data.

Use :ref:`historic aggregates <historic-aggregates>` to process the raw data and apply specific calculations for statistical analysis.


.. toctree::
   :maxdepth: 1

   table/index
   chart/index
   export/index
   import/index

| 

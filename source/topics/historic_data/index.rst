.. _historic-data:

Historic Data
==============

|icon-history| Historic data is always associated with an individual parameter. 
You can store millions of individual data points per parameter with a maximum limit of 17280 records per day. This equates to 5 second logging or short-bursts of millisecond data. 

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
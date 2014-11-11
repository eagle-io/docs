.. _historic-jts:

JSON Time Series
================

`JSON <http://json.org>`_ Time Series (JTS) is a lightweight data-interchange format for :term:`time series <time series>` data. It has been designed to be highly readable, parsable and extendable.

The JTS document format is nativey supported by eagle.io which can be easily imported and exported via the :ref:`HTTP API <api>`.

Example JTS document::

    {
        "docType": "jts",
        "version": "1.0",
        "header": {
            "startTime": "2014-08-16T02:00:00.000Z",
            "endTime": "2014-08-16T02:20:43.000Z",
            "recordCount": 5,
            "columns": {
                "0": {
                    "id": "541a5a129bc9b4035f906d70",
                    "name": "Temperature",
                    "dataType": "NUMBER",
                    "renderType": "VALUE",
                    "format": "0.###",
                    "aggregate": "NONE"
                }
            }
        },
        "data": [
            { 
                "ts": "2014-08-16T02:00:39.000Z",
                "f": { "0": {"v": 28.21, "q": 100 } }
            },
            { 
                "ts": "2014-08-16T02:05:40.000Z",
                "f": { "0": {"v": 28.22 } }
            },
            { 
                "ts": "2014-08-16T02:10:41.000Z",
                "f": { "0": {"v": 28.7 } }
            },
            { 
                "ts": "2014-08-16T02:15:42.000Z",
                "f": { "0": {"v": 29.2, "q": 100 } }
            },
            { 
                "ts": "2014-08-16T02:20:43.000Z",
                "f": { "0": {"v": 29.18 } }
            },
        ]
    }


.. only:: not latex

    |
    

JTS Document specification
--------------------------

.. table::
    :class: table-fluid

    =================   =============   ============================================================
    Attribute           Example         Description
    =================   =============   ============================================================
    **docType**         jts             *Required*. Must be 'jts'
    **version**         1.0             *Required*. Version '1.0' supported
    **header**                          *Optional*. Object describing document data
    **data**                            *Required*. Array of historic records in chronological order
    =================   =============   ============================================================

::
    
    {
        "docType": "jts",
        "version": "<version>",
        "header": {},
        "data": []
    }  



Header
~~~~~~~~~~~

The header is optional and is used to describe the data contained within the document.

.. table::
    :class: table-fluid

    =================   ============================    ============================================================================
    Header Attribute    Example                         Description
    =================   ============================    ============================================================================
    **startTime**       2014-08-16T02:00:00.000Z        :ref:`ISO8601<time-format-iso8601>` timestamp of earliest record in document
    **endTime**         2014-08-16T02:20:43.000Z        :ref:`ISO8601<time-format-iso8601>` timestamp of latest record in document
    **recordCount**     5                               Total record count (number of array items in data)
    **columns**                                         Object describing columns in document
    =================   ============================    ============================================================================

:: 
    
    {
        "startTime": "<startTime>",
        "endTime": "<endTime>",
        "recordCount": 0,
        "columns": {}
    }


Header Columns
````````````````
The header *columns* object contains *column index* keys which map to the corresponding *column index* in the record fields object. Column index assignment is generally zero-based (first index is 0).

.. table::
    :class: table-fluid

    =================   ============================    ============================================================================
    Column Attribute    Example                         Description
    =================   ============================    ============================================================================
    **id**              541a5a129bc9b4035f906d70        Unique identifier of resource (usually its _id)
    **name**            Temperature                     Name of resource or node
    **dataType**        NUMBER                          :ref:`Data type <historic-jts-datatypes>` of associated node. 
                                                        *[NUMBER, TEXT, TIME, COORDINATES]* Note: if 'renderType' is STATE the data  
                                                        in this document will be String.
    **renderType**      VALUE                           Rendering of 'v' attribute in records. *[VALUE, STATE]*
    **format**          0.###                           :ref:`Format <node-configuration-parameter-general>` of the value.
    **aggregate**       NONE                            Historic :ref:`aggregate <historic-aggregates>` applied to data. 
                                                        Default is NONE
    **baseTime**        D                               :ref:`OPC Base Time <relative-time>` used for aggregation
    **interval**        1H                              :ref:`OPC Interval <relative-time>` used for aggregation                                    
    =================   ============================    ============================================================================

::

    {
        "0": {
            "id": "<id>",
            "name": "<name>",
            "dataType": "<dataType>",
            "format": "<format>",
            "aggregate": "<aggregate>",
            "baseTime": "<baseTime>",
            "interval": "<interval>"
        },
        "1": {},
        "2": {}
    }


Data
~~~~~~~~~~~~

The data attribute contains an array of records. Each record contains a 'ts' :ref:`ISO8601<time-format-iso8601>` timestamp and an 'f' fields object which can contain value and quality data for 1 or more columns (using column index as key).

.. table::
    :class: table-fluid

    =================   ============================    ======================================================================================
    Record Attribute    Example                         Description
    =================   ============================    ======================================================================================
    **ts**              2014-08-16T02:00:00.000Z        *Required*. :ref:`ISO8601<time-format-iso8601>` timestamp of data point(s)
    **f**                                               *Required*. Object containing data for 1 or more columns 
                                                        (using column index as key)
    | **v**             10.4                            *Optional*. Value of column for the corresponding record timestamp 
                                                        :ref:`Data type <historic-jts-datatypes>` should match *dataType* option in header
    | **q**             100                             *Optional*. Quality code associated with data value for this column
    =================   ============================    ======================================================================================

::

    [
        { 
            "ts": "<ts>",
            "f": { 
                "0": {"v": 10.4, "q": 100},
                "1": {"v": 55} 
            }
        },
        {
            "ts": "<ts>",
            "f": { "0": {"v": 12, "q": 100}, "1": {"v": 55, "q": 100} }
        }
    ]


.. note::
    The 'f' fields object can be sparsley populated by only including columns that have data for the associated record timestamp.


.. _historic-jts-datatypes:

Data Types
~~~~~~~~~~~

JTS supports both simple and complex data types. Complex data types are always encapsulated in a JSON object with its key prefixed with '$'.

When inserting historic data, the data type *MUST* match the parameter type. For example, TIME data is only accepted on Time parameters.
Data that has been exported using renderType 'STATE' will always have a *String* format.

The following data types are supported in the 'v' value field of a record column:

.. table::
    :class: table-fluid

    =================   ============================    =================================================   =======================================
    Data Type           Accepted Parameter Type         Format                                              Example
    =================   ============================    =================================================   =======================================
    **NUMBER**          Number parameters               Number                                              24.5
    **TEXT**            Text parameters                 String                                              "valve open"
    **TIME**            Time parameters                 {"$time": :ref:`"ISO8601<time-format-iso8601>`"}    {"$time": "2014-08-16T02:00:00Z"}
                                                           
    **COORDINATES**     Locations                       {"$coords": [<latitude>, <longitude>]}              {"$coords": [-33.86785, 151.20732]}
    =================   ============================    =================================================   =======================================

.. note::
    The record 'ts' field can be expressed as a simple :ref:`ISO8601<time-format-iso8601>` timestamp instead of the complex TIME data type.

.. raw:: latex

    \newpage

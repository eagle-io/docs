.. _historic-jts:

JSON Time Series
================

`JSON <http://json.org>`_ Time Series (JTS) is a lightweight data-interchange format for :term:`time series <time series>` data. It has been designed to be highly readable, parsable and extendable.

Eagle.io natively supports JTS documents, which can be easily imported and exported via the :ref:`HTTP API <api>`.

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

| 

JTS Document specification
--------------------------

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

=================   ============================    ============================================================================
Column Attribute    Example                         Description
=================   ============================    ============================================================================
**id**              541a5a129bc9b4035f906d70        Unique identifier of resource (usually its _id)
**name**            Temperature                     Name of resource or node
**dataType**        NUMBER                          Expected data type: *[NUMBER, TEXT, TIME]*
**aggregate**       NONE                            Historic :ref:`aggregate <historic-aggregates>` applied to data. 
                                                    Default is NONE
=================   ============================    ============================================================================

::

    {
        "0": {
            "id": "<id>",
            "name": "<name>",
            "dataType": "<dataType>",
            "aggregate": "<aggregate>"
        },
        "1": {},
        "2": {}
    }



Data
~~~~~~~~~~~~

The data attribute contains an array of records. Each record contains a 'ts' :ref:`ISO8601<time-format-iso8601>` timestamp and an 'f' fields object which can contain value and quality data for 1 or more columns (using column index as key).

=================   ============================    ============================================================================
Header Attribute    Example                         Description
=================   ============================    ============================================================================
**ts**              2014-08-16T02:00:00.000Z        *Required*. :ref:`ISO8601<time-format-iso8601>` timestamp of data point(s)
**v**               10.4                            *Optional*. Value of column for the corresponding timestamp. 
                                                    Data type should match *dataType* option in header
**q**               100                             *Optional*. Quality code associated with data value
=================   ============================    ============================================================================

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



.. raw:: latex

    \newpage

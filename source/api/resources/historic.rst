.. _api-resources-historic:

Historic
=========

Historic data can be extracted or inserted into one or more nodes in a single request. You can also use the :ref:`Nodes resource <api-resources-nodes>` to extract or insert data for a single node. Data can be extracted or inserted in either JSON (:ref:`JTS <historic-jts>`) or CSV format (insert via CSV coming soon).

We recommend you ``limit`` the size of requests to 1000 records or less and use :ref:`HTTP compression <api-overview-compression>` whenever possible. If the request or response is too large or exceeds our processing time threshold, the **413 Request Too Large** error response will be returned.

Successful extraction requests will result in a **200 OK** response with the data returned in the body of the response. Successful insertion requests always result in a **202 Accepted** response.

.. note:: 
    Only available for Location and Parameter nodes.

.. contents:: Quick Links
    :depth: 1
    :local:

.. only:: not latex

    |

Retrieve historic data from multiple nodes
------------------------------------------
Retrieve historic data from multiple nodes in a single request using **_id's**.


Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    ====================    ========================    ===================================================================
    Argument                Example                     Description
    ====================    ========================    ===================================================================
    **format**              JSON                        *Optional - Default is JSON*. 
                                                        Data format to return: *[JSON, CSV]*

    **startTime**           2014-08-16T02:00:00Z        *Required*. [#f1]_
                                                        :ref:`ISO8601<time-format-iso8601>` timestamp

    **endTime**             2014-08-16T02:20:43Z        *Required*. [#f1]_
                                                        :ref:`ISO8601<time-format-iso8601>` timestamp

    **limit**               100                         *Optional*. 
                                                        Maximum number of historic records to be returned

    **quality**             FALSE                       *Optional - Default is FALSE*. 
                                                        Flag to include :ref:`quality <historic-quality>`

    **header**              TRUE                        *Optional - Default is TRUE*. 
                                                        Flag to include header  

    **params**              541a5a129bc9b4035f906d70    *Required*. 
                                                        Comma delimited list of parameter _id's to include in extraction.
                                                        Individual parameter options are specified in parentheses.

    | **renderType**        VALUE                       *Optional - Default is parameter displayType*. 
                                                        Rendering of value: *[VALUE, STATE]*

    | **renderFormat**      0.000                       *Optional - Default is node format*.
                                                        :ref:`Format <node-configuration-parameter-general>` to apply
                                                        when renderType is VALUE. '#' must be  
                                                        `Url Encoded <http://en.wikipedia.org/wiki/Percent-encoding>`_ 
                                                        as '%23'.

    | **aggregate**         AVERAGE                     *Optional - Default is NONE (raw)*. 
                                                        Historic :ref:`aggregate <historic-aggregates>` to apply to 
                                                        extracted data.

    | **baseTime**          D                           *Optional*. 
                                                        :ref:`OPC Base Time <relative-time>` required for aggregation.

    | **interval**          3H                          *Optional*. 
                                                        :ref:`OPC Interval <relative-time>` required for aggregation.
    ====================    ========================    ===================================================================

.. [#f1] startTime or endTime can be omitted when ``limit`` is specified.


Include individual parameter arguments in parentheses with key/value separated by colons and multiple arguments semicolon delimited::
    
    params=:_id(key:value;key:value),:_id

Example with optional parameter arguments::

    params=541a5a129bc9b4035f906d70,541a5a129bc9b4035f906d71(aggregate:AVERAGE;baseTime:D;interval:3H)


Request
~~~~~~~~

::

    GET /api/v1/historic

Response
~~~~~~~~

::
    
    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8

::
    
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
                "f": { "0": {"v": 28.21 } }
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
                "f": { "0": {"v": 29.2 } }
            },
            { 
                "ts": "2014-08-16T02:20:43.000Z",
                "f": { "0": {"v": 29.18 } }
            }
        ]
    }

.. only:: not latex

    |
    
Update historic data for multiple nodes
----------------------------------------
Update historic data for one or more nodes by **_id's**.

Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    =================   ========================    ======================================================================
    Argument            Example                     Description
    =================   ========================    ======================================================================
    **format**          JSON                        *Optional - Default is JSON*. 
                                                    Data format being inserted: *[JSON]*. (CSV support coming soon)

    **writeMode**       MERGE_OVERWRITE_EXISTING    *Optional - Default is MERGE_OVERWRITE_EXISTING*. 
                                                    See all available :ref:`write mode <historic-data-import-writemode>` 
                                                    options.

    **notifyOn**        LATEST_ONLY                 *Optional - Default is LATEST_ONLY*.
                                                    When to generate events, raise alarms and send notifications: 
                                                    *[ALL_NEWER, LATEST_ONLY, NONE]*.
                                                    ALL_NEWER: All events newer than parameter current value. 
                                                    LATEST_ONLY: Latest event newer than parameter current value.

    **params**          541a5a129bc9b4035f906d70    *Required*. [#f2]_
                                                    Comma delimited list of parameter _id's to include in extraction. 
                                                    Individual parameter options are specified in parentheses.

    | **columnIndex**   0                           *Required*. [#f2]_
                                                    Index of column in data to be associated with this parameter. 
    =================   ========================    ======================================================================
    
.. [#f2] params argument can be omitted if JTS Document contains headers

Include individual parameter arguments in parentheses with key/value separated by colons and multiple arguments semicolon delimited::
    
    params=:_id(key:value;key:value),:_id

Example with required parameter arguments::

    params=541a5a129bc9b4035f906d70(columnIndex:0),541a5a129bc9b4035f906d71(columnIndex:1)


Request
~~~~~~~~

::

    PUT /api/v1/historic

::

    {
        "docType": "jts",
        "version": "1.0",
        "data": [
            { 
                "ts": "2014-09-17T07:30:00Z",
                "f": { "0": {"v": 25.05 }, "1": {"v": 44.6 } }
            },
            { 
                "ts": "2014-09-17T07:40:00Z",
                "f": { "0": {"v": 25.20 } }
            },
            { 
                "ts": "2014-09-17T07:50:00Z",
                "f": { "0": {"v": 25.14 }, "1": {"v": 45.21 } }
            }
        ]
    }

Response
~~~~~~~~

::
    
    HTTP/1.1 202 Accepted
    Content-Type: application/json; charset=utf-8

::
    
    {
        "status": {
            "code": 202,
            "message": "Operation accepted but not yet complete"
        }
    }


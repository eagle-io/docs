.. _api-resources-historic:

Historic
=========

Historic data can be extracted or inserted into one or more nodes in a single request. You can also use the :ref:`Nodes resource <api-resources-nodes>` to extract or insert data for a single node. Data can be extracted or inserted in JSON (:ref:`JTS <historic-jts>`) format.

We recommend you ``limit`` the size of requests to 1000 records or less and use :ref:`HTTP compression <api-overview-compression>` whenever possible. If the request or response is too large or exceeds our processing time threshold, the **413 Request Too Large** error response will be returned.

Successful extraction requests will result in a **200 OK** response with the data returned in the body of the response. Successful insertion requests always result in a **202 Accepted** response.

.. contents:: Quick Links
    :depth: 1
    :local:

.. only:: not latex

    |

Retrieve historic data from multiple nodes
------------------------------------------
Retrieve historic data from multiple nodes in a single request using **node id's**. You can use the automatically assigned *_id's* or your own *customId's* prepended with '@'.

.. note:: 
    Only available for Location and Parameter nodes. 


Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    ========================    ========================    ===================================================================
    Argument                    Example                     Description
    ========================    ========================    ===================================================================
    **format**                  JSON                        *Optional - Default is JSON*. 
                                                            Data format to return: *[JSON, CSV]*

    **startTime**               2014-08-16T02:00:00Z        *Required*. [#f1]_
                                                            :ref:`ISO8601<time-format-iso8601>` timestamp

    **endTime**                 2014-08-16T02:20:43Z        *Required*. [#f1]_
                                                            :ref:`ISO8601<time-format-iso8601>` timestamp

    **timezone**                Etc/UTC                     *Optional - Default is Etc/UTC*. 
                                                            :ref:`Timezone <timezone>` applied to timestamps. 
                                                            Aggregate *interval* and *baseTime* calculations will also use 
                                                            this zone.

    **timezoneAdjustForDst**    FALSE                       *Optional - Default is FALSE*. 
                                                            Flag to indicate if timestamps should be adjusted for DST in
                                                            selected *timezone*.

    **timeFormat**              YYYY-MM-DD HH:mm:ss         *Optional*. 
                                                            :ref:`Time format<time-format-customize>`.

    **limit**                   100                         *Optional*. 
                                                            Maximum number of historic records to be returned

    **quality**                 FALSE                       *Optional - Default is FALSE*. 
                                                            Flag to include :ref:`quality <historic-quality>`

    **header**                  TRUE                        *Optional - Default is TRUE*. 
                                                            Flag to include header

    **params**                  541a5a129bc9b4035f906d70    *Required*. 
                                @sensor_254                 Comma delimited list of parameter id's to include in extraction.
                                                            Individual parameter options are specified in parentheses.

    | **renderType**            VALUE                       *Optional - Default is parameter displayType*. 
                                                            Rendering of value: *[VALUE, STATE]*

    | **renderFormat**          0.000                       *Optional - Default is node format*.
                                                            :ref:`Format <node-configuration-parameter-general>` to apply
                                                            when renderType is VALUE. '#' must be  
                                                            `Url Encoded <http://en.wikipedia.org/wiki/Percent-encoding>`_ 
                                                            as '%23'.

    | **aggregate**             AVERAGE                     *Optional - Default is NONE (raw)*. 
                                                            Historic :ref:`aggregate <historic-aggregates>` to apply to 
                                                            extracted data.

    | **baseTime**              D                           *Optional*. 
                                                            :ref:`OPC Base Time <relative-time>` required for aggregation.

    | **interval**              3H                          *Optional*. 
                                                            :ref:`OPC Interval <relative-time>` required for aggregation.

    | **baselineType**          RELATIVE                    *Optional - Default is ABSOLUTE*. 
                                                            Absolute will return data point values unmodified. Relative will 
                                                            subtract the first data point value from all subsequent data 
                                                            point values: *[ABSOLUTE, RELATIVE]*
    ========================    ========================    ===================================================================

.. [#f1] startTime or endTime can be omitted when ``limit`` is specified.


Include individual parameter arguments in parentheses with key/value separated by colons and multiple arguments semicolon delimited::
    
    params=:id(key:value;key:value),:id

Example with optional parameter arguments::

    params=541a5a129bc9b4035f906d71(aggregate:AVERAGE;baseTime:D;interval:3H),@sensor_254,@sensor_255


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




Retrieve historic chart with multiple nodes
--------------------------------------------
Retrieve historic chart image with multiple nodes in a single request using **node id's**. You can use the automatically assigned *_id's* or your own *customId's* prepended with '@'.
Chart images can be returned in PNG, JPG, SVG and PDF format. 

The node's pre-configured (or default) chart settings will be used but you can optionally specify any of the arguments below. 

Alternatively use the :ref:`Nodes resource<api-resources-nodes>` historic chart endpoint for generating an image from a :ref:`chart node<node-configuration-chart>`. 

.. note:: 
    Only available for Parameter nodes. 


Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    ========================    ========================    ===================================================================
    Argument                    Example                     Description
    ========================    ========================    ===================================================================
    **format**                  PNG                         *Optional - Default is PNG*. 
                                                            Image format to return: *[PNG, JPG, SVG, PDF]*

    **width**                   1200                        *Optional - Default is 1200*. 
                                                            Width of image (png, jpg) in pixels

    **height**                  800                         *Optional - Default is 800*. 
                                                            Height of image (png, jpg) in pixels

    **title**                   My Chart                    *Optional*. 
                                                            Title to display on chart

    **subtitle**                Generated by eagle.io       *Optional*.
                                                            Subtitle to display on chart

    **startTime**               2014-08-16T02:00:00Z        *Optional*.
                                                            :ref:`ISO8601<time-format-iso8601>` timestamp

    **endTime**                 2014-08-16T02:20:43Z        *Optional*.
                                                            :ref:`ISO8601<time-format-iso8601>` timestamp

    **timezone**                Etc/UTC                     *Optional - Default is Etc/UTC*. 
                                                            :ref:`Timezone <timezone>` applied to timestamps. 
                                                            Aggregate *interval* and *baseTime* calculations will also use 
                                                            this zone

    **timezoneAdjustForDst**    FALSE                       *Optional - Default is FALSE*. 
                                                            Flag to indicate if timestamps should be adjusted for DST in
                                                            selected *timezone*

    **params**                  541a5a129bc9b4035f906d70    *Required*. 
                                @sensor_254                 Comma delimited list of parameter id's to include in extraction.
                                                            Individual parameter options are specified in parentheses

    | **renderType**            VALUE                       *Optional - Default is parameter displayType*. 
                                                            Rendering of value: *[VALUE, STATE]*

    | **aggregate**             AVERAGE                     *Optional*. 
                                                            Historic :ref:`aggregate <historic-aggregates>` to apply to 
                                                            extracted data

    | **baseTime**              D                           *Optional*. 
                                                            :ref:`OPC Base Time <relative-time>` required for aggregation

    | **interval**              3H                          *Optional*. 
                                                            :ref:`OPC Interval <relative-time>` required for aggregation

    | **baselineType**          RELATIVE                    *Optional*. 
                                                            Absolute will return data point values unmodified. Relative will 
                                                            subtract the first data point value from all subsequent data 
                                                            point values: *[ABSOLUTE, RELATIVE]*
    ========================    ========================    ===================================================================


Include individual parameter arguments in parentheses with key/value separated by colons and multiple arguments semicolon delimited::
    
    params=:id(key:value;key:value),:id

Example with optional parameter arguments::

    params=541a5a129bc9b4035f906d71(aggregate:AVERAGE;baseTime:D;interval:3H),@sensor_254,@sensor_255


Request
~~~~~~~~

::

    GET /api/v1/historic/chart

Response
~~~~~~~~

::
    
    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8

.. only:: not latex

    .. image:: api_resources_historic_chart.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: api_resources_historic_chart.jpg


.. only:: not latex

    |



Update historic data for multiple nodes
----------------------------------------
Update historic data for one or more nodes by **id's**. You can use the automatically assigned *_id's* or your own *customId's* prepended with '@'.

.. note:: 
    Only available for Location and Parameter nodes. 
    Required API key permission: *Modify*


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
                        @sensor_254                 Comma delimited list of parameter _id's to include in extraction. 
                                                    Individual parameter options are specified in parentheses.

    | **columnIndex**   0                           *Required*. [#f2]_
                                                    Index of column in data to be associated with this parameter. 
    =================   ========================    ======================================================================
    
.. [#f2] params argument can be omitted if JTS Document contains headers

Include individual parameter arguments in parentheses with key/value separated by colons and multiple arguments semicolon delimited::
    
    params=:id(key:value;key:value),:id

Example with required parameter arguments::

    params=541a5a129bc9b4035f906d70(columnIndex:0),@sensor_254(columnIndex:1)


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


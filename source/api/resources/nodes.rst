.. _api-resources-nodes:

Nodes
=========

Nodes are the container objects that store all data and configuration for your projects.
There are various :ref:`types of nodes <nodes-and-configuration>` including: Workspaces, Groups, Locations, Dashboards, Attachments, Sources and Parameters.

.. contents:: Quick Links
    :depth: 1
    :local:

.. only:: not latex

    |

Node Attributes
-----------------
Consumers of Nodes should tolerate the addition of new attributes and variance in ordering of attributes with ease. Not all attributes appear in all contexts. It is generally safe to consider a nulled attribute, an empty set, and the absence of an attribute as the same thing.

.. table::
    :class: table-fluid

    ================================    =========   ===========================================================================
    General attributes                  Type        Description
    ================================    =========   ===========================================================================
    **_class**                          String      Identifies resource type: *io.eagle.models.node.*\*
    **_id**                             ObjectId    Unique identifier for this node
    **alarms**                          Object      Alarm configuration and status
    **createdTime**                     Date        :ref:`ISO8601<time-format-iso8601>` timestamp the node was created
    **isActive**                        Boolean     Flag to indicate if node is active
    **metadata**                        Array       Array of metadata fields and values
    **name**                            String      Name of node
    **ownerId**                         ObjectId    Unique owner _id
    **parentId**                        ObjectId    Parent node _id (not included in Workspace)
    **workspaceId**                     ObjectId    Associated Workspace _id (not included in Workspace)
    ================================    =========   ===========================================================================

.. table::
    :class: table-fluid

    ================================    =========   ===========================================================================
    Attachment attributes               Type        Description
    ================================    =========   ===========================================================================
    **fileSize**                        Int64       Size of attachment in bytes
    **mimeType**                        String      Mime-type of the attachment
    ================================    =========   ===========================================================================

.. table::
    :class: table-fluid

    ================================    =========   ===========================================================================
    Parameter & Location attributes     Type        Description
    ================================    =========   ===========================================================================
    **currentQuality**                  Int32       Quality code associated with current value
    **currentStateId**                  ObjectId    State _id associated with current value
    **currentTime**                     Date        :ref:`ISO8601<time-format-iso8601>` timestamp of the current value
    **currentValue**                    Variable    Current value. Type inherited from _class
    **displayType**                     String      Default display type of parameter: 
                                                    *[VALUE, STATE]*
    **format**                          String      Formatting to apply to displayed value
    **oldestQuality**                   Int32       Quality code associated with oldest value
    **oldestStateId**                   ObjectId    State _id associated with oldest value
    **oldestTime**                      Date        :ref:`ISO8601<time-format-iso8601>` timestamp of the oldest value
    **oldestValue**                     Variable    Oldest value. Type inherited from _class
    **previousQuality**                 Int32       Quality code associated with oldest value
    **previousStateId**                 ObjectId    State _id associated with previous value
    **previousTime**                    Date        :ref:`ISO8601<time-format-iso8601>` timestamp of the previous value
    **previousValue**                   Variable    Previous value. Type inherited from _class
    **states**                          Array       Array of state configuration objects
    **statesType**                      String      States evaluation mode:
                                                    *[RANGE, DISCRETE]*
    **units**                           String      Units to display with value
    ================================    =========   ===========================================================================

.. table::
    :class: table-fluid

    ================================    =========   ===========================================================================
    Source attributes                   Type        Description
    ================================    =========   ===========================================================================
    **currentAttachmentId**             ObjectId    Current attachment _id associated with Attachment Source
    **currentStatus**                   String      Current status: 
                                                    *[DISABLED, FAILED, IDLE, SCHEDULED, QUEUED, CONNECTING, 
                                                    DOWNLOADING, PROCESSING, RETRYING, CONFIGURING, CONTROLLING, REMOTE]*
    **clockSync**                       Boolean     Flag to indicate if data logger clock is being syncronized with server
    **firmwareVersion**                 String      Firmware version in-use by data logger
    **isEnabled**                       Boolean     Flag to enable or disable the Source
    **lastAcquireRecordCount**          Int32       Number of records acquired on last acquistion
    **lastCommsAttempt**                Date        :ref:`ISO8601<time-format-iso8601>` timestamp of the 
                                                    last communications attempt
    **lastCommsSuccess**                Date        :ref:`ISO8601<time-format-iso8601>` timestamp of the 
                                                    last successful communication with Source
    **model**                           String      Model of data logger in-use
    **pakBusAddress**                   Int32       PakBus address of Campbell data logger
    **pakBusGatewayAddress**            Int32       PakBus gateway address of Campbell data logger
    **progName**                        String      Name of program currently loaded in Campbell data logger
    **scheduleType**                    String      Type of Schedule for automatic collection:
                                                    *[SERVER, REMOTE, NONE]*
    **timezone**                        String      :ref:`Timezone <timezone>` of Source data.
    **timezoneAdjustForDst**            Boolean     Flag to indicate if acquired data is adjusted for DST in selected timezone
    **totalCommsAttempt**               Int32       Total count of communications attempts
    **totalCommsSuccess**               Int32       Total count of successful communications
    ================================    =========   ===========================================================================

.. only:: not latex

    |

List all nodes
----------------
List all nodes visible to the authenticated user.


Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    =================   =====================   ================================================================
    Argument            Example                 Description
    =================   =====================   ================================================================
    **attr**            _id,slug                *Optional.* 
                                                Comma delimited list of attributes to include in response
    **type**            TREE                    *Optional - default is LIST* [#f1]_

                                                | **LIST** returns a flat list of nodes
                                                | **TREE** returns hierarchical list of nodes

    **filter**          isActive($eq:true)      *Optional*. 
                                                :ref:`Filter <api-overview-request-arguments-filter>` the 
                                                records based on attribute value(s)

    **limit**           100                     *Optional*. 
                                                Maximum number of records to be returned

    **skip**            50                      *Optional*. 
                                                Skip the first *n* records returned. Can be used with 
                                                ``limit`` to paginate results

    **sort**            createdTime(DESC)       *Optional*. 
                                                Comma delimited list of attributes to sort by. Optionally 
                                                include sort direction in parentheses or default to ASC: 
                                                *[ASC, DESC]*
    =================   =====================   ================================================================

.. [#f1] When TREE ``type`` is specified the filter, limit, skip and sort arguments are not allowed.

Request
~~~~~~~~

::

    GET /api/v1/nodes

Response
~~~~~~~~

::
    
    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8


::
    
    [
        {
            "_class": "io.eagle.models.node.Workspace",
            "_id": "536884ecb5a76fd5d3000014",
            "createdTime": "2014-05-06T06:45:00.061Z",
            "isActive": true,
            "name": "My Workspace",
            "ownerId": "52969365593a1a3a3200000f"
        },
        {
            "_class": "io.eagle.models.node.Group",
            "_id": "53eada0ada91110000000046",
            "createdTime": "2014-08-13T03:22:50.489Z",
            "isActive": true,
            "name": "Australia",
            "ownerId": "52969365593a1a3a3200000f",
            "parentId": "536884ecb5a76fd5d3000014",
            "workspaceId": "536884ecb5a76fd5d3000014"
        },
        {
            "_class": "io.eagle.models.node.location.Location",
            "_id": "542cbd18815043850e995f84",
            "alarms": {
                "stateAlarm": {
                    "status": {
                        "acknowledgeComment": null,
                        "acknowledgeTime": null,
                        "acknowledgeUsername": null,
                        "categoryId": null,
                        "message": null,
                        "alarmState": "CLEARED"
                    },
                    "_class": "io.eagle.models.node.alarm.StateAlarm"
                }
            },
            "createdTime": "2014-10-02T02:48:56.186Z",
            "displayType": "VALUE",
            "isActive": true,
            "metadata": [],
            "name": "New Location",
            "ownerId": "52969365593a1a3a3200000f",
            "parentId": "53eada0ada91110000000046",
            "states": [
                {
                    "name": "NORMAL",
                    "index": 0,
                    "categoryId": null,
                    "_id": "542cbc4f815043850e995ebb",
                    "threshold": {
                        "_class": "io.eagle.util.geo.GeoPoint"
                    },
                    "notify": "NEVER",
                    "description": null,
                    "isAlarm": null,
                    "_class": "io.eagle.models.node.point.PointState"
                }
            ],
            "statesType": "RANGE",
            "workspaceId": "536884ecb5a76fd5d3000014"
        }
    ]

Example response when ``type`` argument is TREE. Descendants are wrapped in a ``children`` array::
    
    [
        {
            "_class": "io.eagle.models.node.Workspace",
            "_id": "536884ecb5a76fd5d3000014",
            "createdTime": "2014-05-06T06:45:00.061Z",
            "isActive": true,
            "name": "My Workspace",
            "ownerId": "52969365593a1a3a3200000f",
            "children": [
                {
                    "_class": "io.eagle.models.node.Group",
                    "_id": "53eada0ada91110000000046",
                    "createdTime": "2014-08-13T03:22:50.489Z",
                    "isActive": true,
                    "name": "Australia",
                    "ownerId": "52969365593a1a3a3200000f",
                    "parentId": "536884ecb5a76fd5d3000014",
                    "workspaceId": "536884ecb5a76fd5d3000014",
                    "children": [
                        {
                            "_class": "io.eagle.models.node.location.Location",
                            "_id": "542cbd18815043850e995f84",
                            "alarms": {
                                "stateAlarm": {
                                    "status": {
                                        "acknowledgeComment": null,
                                        "acknowledgeTime": null,
                                        "acknowledgeUsername": null,
                                        "categoryId": null,
                                        "message": null,
                                        "alarmState": "CLEARED"
                                    },
                                    "_class": "io.eagle.models.node.alarm.StateAlarm"
                                }
                            },
                            "createdTime": "2014-10-02T02:48:56.186Z",
                            "displayType": "VALUE",
                            "isActive": true,
                            "metadata": [],
                            "name": "New Location",
                            "ownerId": "52969365593a1a3a3200000f",
                            "parentId": "53eada0ada91110000000046",
                            "states": [
                                {
                                    "name": "NORMAL",
                                    "index": 0,
                                    "categoryId": null,
                                    "_id": "542cbc4f815043850e995ebb",
                                    "threshold": {
                                        "_class": "io.eagle.util.geo.GeoPoint"
                                    },
                                    "notify": "NEVER",
                                    "description": null,
                                    "isAlarm": null,
                                    "_class": "io.eagle.models.node.point.PointState"
                                }
                            ],
                            "statesType": "RANGE",
                            "workspaceId": "536884ecb5a76fd5d3000014",
                            "children": []
                        }
                    ]
                }
            ]
        }
    ]

.. only:: not latex

    |

Get a node
-------------
Get a node by its **_id**.


Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    =================   =================   ================================================================
    Argument            Example             Description
    =================   =================   ================================================================
    **attr**            _id,_class          *Optional.* 
                                            Comma delimited list of attributes to include in response
    =================   =================   ================================================================

Request
~~~~~~~~

::

    GET /api/v1/nodes/:_id

Response
~~~~~~~~

::
    
    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8

::
    
    {
        "_class": "io.eagle.models.node.Workspace",
        "_id": "536884ecb5a76fd5d3000014",
        "createdTime": "2014-05-06T06:45:00.061Z",
        "isActive": true,
        "metadata": [],
        "name": "My Workspace",
        "ownerId": "52969365593a1a3a3200000f"
    }

.. only:: not latex

    |

Get historic data from a node
------------------------------
Get historic data from a node by its **_id**. Data can be returned in JSON (:ref:`JTS <historic-jts>`) or CSV format. Use the :ref:`Historic resource<api-resources-historic>` for extracting historic data from multiple nodes in a single request.

.. note:: 
    Only available for Location and Parameter nodes.
    

Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    =================   ========================    =================================================================
    Argument            Example                     Description
    =================   ========================    =================================================================
    **format**          JSON                        *Optional - Default is JSON*. 
                                                    Data format to return: *[JSON, CSV]*

    **startTime**       2014-08-16T02:00:00Z        *Required*. [#f2]_
                                                    :ref:`ISO8601<time-format-iso8601>` timestamp

    **endTime**         2014-08-16T02:20:43Z        *Required*. [#f2]_
                                                    :ref:`ISO8601<time-format-iso8601>` timestamp

    **limit**           100                         *Optional*. 
                                                    Maximum number of historic records to be returned

    **quality**         FALSE                       *Optional - Default is FALSE*. 
                                                    Flag to include :ref:`quality <historic-quality>`

    **header**          TRUE                        *Optional - Default is TRUE*. 
                                                    Flag to include header  

    **renderType**      VALUE                       *Optional - Default is node displayType*. 
                                                    Rendering of value: *[VALUE, STATE]*

    **aggregate**       AVERAGE                     *Optional - Default is NONE (raw)*. 
                                                    Historic :ref:`aggregate <historic-aggregates>` to apply to 
                                                    extracted data.

    **baseTime**        D                           *Optional*. 
                                                    :ref:`OPC Base Time <relative-time>` required for aggregation.

    **interval**        3H                          *Optional*. 
                                                    :ref:`OPC Interval <relative-time>` required for aggregation.
    =================   ========================    =================================================================

.. [#f2] startTime or endTime can be omitted when ``limit`` is specified.


Request
~~~~~~~~

::

    GET /api/v1/nodes/:_id/historic

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
            },
        ]
    }

.. only:: not latex

    |
    
Post historic data to a node
------------------------------
Post historic data to a node by its **_id**. Data can be inserted in JSON (:ref:`JTS <historic-jts>`) or CSV format. Use the :ref:`Historic resource <api-resources-historic>` for posting historic data to multiple nodes in a single request.

.. note:: 
    Only available for Location and Parameter nodes.


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

    **columnIndex**     0                           *Optional - Default is 0*. 
                                                    Index of column in data to be associated with this parameter. Will use
                                                    index specified in JTS Doc header if available or default to 0.
    =================   ========================    ======================================================================

Request
~~~~~~~~

::

    POST /api/v1/nodes/:_id/historic

::

    {
        "docType": "jts",
        "version": "1.0",
        "data": [
            { 
                "ts": "2014-09-17T07:30:00Z",
                "f": { "0": {"v": 25.05 } }
            },
            { 
                "ts": "2014-09-17T07:40:00Z",
                "f": { "0": {"v": 25.20 } }
            },
            { 
                "ts": "2014-09-17T07:50:00Z",
                "f": { "0": {"v": 25.14 } }
            },
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


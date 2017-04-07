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

    ================================    =========   =========   ===========================================================================
    Standard attributes                 Type        Update      Description
    ================================    =========   =========   ===========================================================================
    **_class**                          String                  Identifies resource type: *io.eagle.models.node.*\*
    **_id**                             ObjectId                Unique identifier for this node
    **alarms**                          Object      Yes         Alarm configuration and status
    **createdTime**                     Time                    :ref:`ISO8601<time-format-iso8601>` timestamp the node was created
    **customId**                        String      Yes         Optional user-assigned identifier for this node. Unique to owner (account)
    **isActive**                        Boolean                 Flag to indicate if node is active
    **name**                            String      Yes         Name of node
    **ownerId**                         ObjectId                Unique owner _id
    **parentId**                        ObjectId                Parent node _id (not included in Workspace)
    **workspaceId**                     ObjectId                Associated Workspace _id (not set on Workspace node)
    ================================    =========   =========   ===========================================================================

.. table::
    :class: table-fluid

    ================================    =========   =========   ===========================================================================
    Attachment attributes               Type        Update      Description
    ================================    =========   =========   ===========================================================================
    **description**                     String      Yes         Description of attachment as set by user.
    **fileSize**                        Int64                   Size of attachment in bytes
    **fileUrl** [#f1]_                  String                  Attachment URL. Requires *ATTACHMENT_READ* permission.
                                                                Optionally specify an ``expiry`` period for the URL.
    **filePreviewUrl** [#f1]_           String                  Preview URL. Only included if the attachment is a valid media file.
                                                                Requires *ATTACHMENT_READ* permission.
                                                                Optionally specify an ``expiry`` period for the URL.
                                                                Note: image dimensions may change without notice.
    **mimeType**                        String                  Mime-type of the attachment
    ================================    =========   =========   ===========================================================================

.. table::
    :class: table-fluid

    ================================    =========   =========   ===========================================================================
    Parameter & Location attributes     Type        Update      Description
    ================================    =========   =========   ===========================================================================
    **controlValue**                    Variable    Yes         Pending control value. Type inherited from _class.
    **controlValueMaximum**             Double      Yes         Maximum control value when controlValueRestriction set to RANGE
    **controlValueMinimum**             Double      Yes         Minimum control value when controlValueRestriction set to RANGE
    **controlValueRestriction**         String      Yes         Control value is restricted to:
                                                                *[NONE, RANGE, STATES]*
    **currentQuality**                  Int32                   Quality code associated with current value
    **currentStateId**                  ObjectId                State _id associated with current value
    **currentTime**                     Time                    :ref:`ISO8601<time-format-iso8601>` timestamp of the current value
    **currentValue**                    Variable                Latest value with multiplier and offset applied. 
                                                                Type inherited from _class
    **displayType**                     String      Yes         Default display type of parameter: 
                                                                *[VALUE, STATE]*
    **format**                          String      Yes         Formatting to apply to displayed value
    **metadata**                        Array                   Array of metadata fields and values for a location
    **multiplier**                      Double      Yes         Value to multiply rawValue and historic data on extraction. 
                                                                Applies to number parameters only
    **offset**                          Double      Yes         Value to add to rawValue and historic data on extraction. 
                                                                Applies to number parameters only
    **oldestQuality**                   Int32                   Quality code associated with oldest value
    **oldestStateId**                   ObjectId                State _id associated with oldest value
    **oldestTime**                      Time                    :ref:`ISO8601<time-format-iso8601>` timestamp of the oldest value
    **oldestValue**                     Variable                Oldest value. Type inherited from _class
    **previousQuality**                 Int32                   Quality code associated with oldest value
    **previousStateId**                 ObjectId                State _id associated with previous value
    **previousTime**                    Time                    :ref:`ISO8601<time-format-iso8601>` timestamp of the previous value
    **previousValue**                   Variable                Previous value. Type inherited from _class
    **rawValue**                        Double                  Latest raw value. Applies to number parameters only
    **states**                          Array       Yes         Array of state configuration objects
    **statesType**                      String      Yes         States evaluation mode:
                                                                *[RANGE, DISCRETE]*
    **units**                           String      Yes         Units to display with value
    ================================    =========   =========   ===========================================================================

.. table::
    :class: table-fluid

    ================================    =========   =========   ===========================================================================
    Source attributes                   Type        Update      Description
    ================================    =========   =========   ===========================================================================
    **currentAttachmentId**             ObjectId                Current attachment _id associated with Attachment Source
    **currentStatus**                   String                  Current status: 
                                                                *[DISABLED, FAILED, IDLE, SCHEDULED, QUEUED, CONNECTING, 
                                                                DOWNLOADING, PROCESSING, RETRYING, CONFIGURING, CONTROLLING, REMOTE]*
    **clockSync**                       Boolean                 Flag to indicate if data logger clock is being syncronized with server
    **firmwareVersion**                 String                  Firmware version in-use by data logger
    **isEnabled**                       Boolean     Yes         Flag to enable or disable the Source
    **lastAcquireRecordCount**          Int32                   Number of records acquired on last acquistion
    **lastCommsAttempt**                Time                    :ref:`ISO8601<time-format-iso8601>` timestamp of the 
                                                                last communications attempt
    **lastCommsSuccess**                Time                    :ref:`ISO8601<time-format-iso8601>` timestamp of the 
                                                                last successful communication with Source
    **model**                           String                  Model of data logger in-use
    **pakBusAddress**                   Int32       Yes         PakBus address of Campbell data logger
    **pakBusGatewayAddress**            Int32       Yes         PakBus gateway address of Campbell data logger
    **progName**                        String                  Name of program currently loaded in Campbell data logger
    **scheduleType**                    String                  Type of Schedule for automatic collection:
                                                                *[SERVER, REMOTE, NONE]*
    **timezone**                        String      Yes         :ref:`Timezone <timezone>` of Source data.
    **timezoneAdjustForDst**            Boolean     Yes         Flag to indicate if acquired data is adjusted for DST in selected timezone
    **totalCommsAttempt**               Int32                   Total count of communications attempts
    **totalCommsSuccess**               Int32                   Total count of successful communications
    ================================    =========   =========   ===========================================================================

.. [#f1] Certain attributes can not be used in filter criteria.

.. only:: not latex

    |

Retrieve all nodes
------------------
Retrieve a list of all nodes available to the authenticated API key. Optionally *filter* by attribute values.


Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    =================   =====================   ================================================================
    Argument            Example                 Description
    =================   =====================   ================================================================
    **attr**            _id,slug                *Optional.* 
                                                Comma delimited list of attributes to include in response

    **type**            TREE                    *Optional - Default is LIST* [#f2]_
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

    **expiry**          60                      *Optional*. 
                                                Expiry period in minutes for any included resource links. 
                                                ie. *fileUrl* for Attachments. Default is 0 (no expiry).
                                                Expired resource links will return 403 Forbidden.
    =================   =====================   ================================================================

.. [#f2] When TREE ``type`` is specified the filter, limit, skip and sort arguments are not allowed.

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

Retrieve a node
---------------
Retrieve a node by its **id**. You can use the automatically assigned *_id* or your own *customId* prepended with '@'.

Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    =================   =================   ================================================================
    Argument            Example             Description
    =================   =================   ================================================================
    **attr**            _id,_class          *Optional.* 
                                            Comma delimited list of attributes to include in response

    **expiry**          60                  *Optional*. 
                                            Expiry period in minutes for any included resource links. 
                                            ie. *fileUrl* for Attachments. Default is 0 (no expiry).
                                            Expired resource links will return 403 Forbidden.
    =================   =================   ================================================================

Request
~~~~~~~~

::

    GET /api/v1/nodes/:id

Example accessing a node by its automatically assigned *_id*
::

    /api/v1/nodes/536884ecb5a76fd5d3000014

Example accessing a node by its *customId*
::

    /api/v1/nodes/@workspace-01

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
        "name": "My Workspace",
        "ownerId": "52969365593a1a3a3200000f",
        "customId": "workspace-01"
    }

.. only:: not latex

    |




Update a node
---------------
Update a node by its **id**. You can use the automatically assigned *_id* or your own *customId* prepended with '@'.
Updates are limited to the attributes listed with the *Update* flag. 
Multiple attributes can be updated in a single request.

The updated node will be returned in the response if the request is successful. You can optionally limit the returned attributes by specifying the **attr** argument.

Refer to the examples below when updating complex attributes such as alarms and states.

.. note:: 
    Required API key permission: *Modify*

Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    =================   =================   ================================================================
    Argument            Example             Description
    =================   =================   ================================================================
    **attr**            _id,_class          *Optional*. 
                                            Comma delimited list of attributes to include in successful 
                                            response
    =================   =================   ================================================================

Request
~~~~~~~~

::

    PUT /api/v1/nodes/:id

::

    {
        "name": "My Renamed Workspace"
    }

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
        "name": "My Renamed Workspace",
        "ownerId": "52969365593a1a3a3200000f"
    }


Updating alarm configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Alarm configuration can be included in the update request for Location, Source and Parameter nodes. You must specify each alarm type as a nested attribute containing the *config* to be updated. Only changed attributes need to be specified.

.. table::
    :class: table-fluid

    ================================    =========   ===========================================================================
    Alarm config attributes             Type        Description
    ================================    =========   ===========================================================================
    **isEnabled**                       Boolean     Enable or disable the alarm. Overload alarm can not be disabled.
    **notify**                          String      When notifications should be triggered:
                                                    *[NEVER, ALWAYS, AWAY_FROM_NORMAL, TOWARDS_NORMAL]*.
    **categoryId**                      ObjectId    Id of :ref:`owner category<api-resources-owners>` to assign to this alarm. 
                                                    Required when *notify* option is not *NEVER*
    ================================    =========   ===========================================================================

Example::

    {
        "alarms": {
            "communicationsAlarm": {
                "config": {
                    "isEnabled": true,
                    "notify": "ALWAYS",
                    "categoryId": "52969367593a1a3a32000012"
                }
            },
            "configurationAlarm": { "config": { "isEnabled": false } }
        }
    }


The alarm types available are specific to the type of node being updated:

.. table::
    :class: table-fluid

    ========================   ========================================================
    Alarm types                Supported nodes
    ========================   ========================================================
    **communicationsAlarm**    Sources
    **configurationAlarm**     Sources
    **controlAlarm**           Control parameters
    **outdatedAlarm**          Sources
    **overloadAlarm**          Sources
    **stateAlarm** [1]_        Locations, Parameters
    ========================   ========================================================

.. [1] stateAlarm has no direct configuration. Modify *states* to change state alarm behaviour.



Updating states configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
States configuration can be included in the update request for Number and Text Parameter nodes. 
Number parameters can use either *DISCRETE* or *RANGE* states. Text parameters are limited to *DISCRETE* states only. 

States can be reset to parameter defaults by updating the *states* attribute with *null*.

**Update** existing states by providing the *_id* attribute for each state in the request. Any states without the *_id* attribute will be ignored. Only changed attributes need to be specified.

If no states in the request contain an *_id* attribute the update will **Replace** the existing states.
**RANGE** states for number parameters must always be specified in *ascending* order based on *threshold* and 
there must be one state with the *name* attribute set to *NORMAL*.

Refer to :ref:`Parameter states<node-configuration-parameter>` for further information.

.. note::
    State type for number parameters can be changed with the *statesType* attribute. When changing *statesType* 
    you should specify new *states* configuration or default states will be applied.


.. table::
    :class: table-fluid

    ================================    =========   ===========================================================================
    State attributes                    Type        Description
    ================================    =========   ===========================================================================
    **name**                            String      *Required*. Unique name assigned to the state
    **threshold**                       Variable    *Required*. Unique threshold value for the state. 
                                                    Number parameters require a *Double*. 
                                                    Text parameters require a *String*.
    **occurrences**                     Int32       *Optional - Default is 1*.
                                                    Minimum number of repeat values equal or beyond threshold required to
                                                    trigger state: *1-9*.
    **isAlarm**                         Boolean     *Optional - Default is FALSE*. 
                                                    Flag to indicate if this state should raise an alarm. 
                                                    Not valid for *NORMAL* RANGE state.
    **notify**                          String      *Optional - Default is NEVER*. 
                                                    When notifications should be triggered:
                                                    *[NEVER, ALWAYS, AWAY_FROM_NORMAL, TOWARDS_NORMAL]*. 
                                                    DISCRETE states and the *NORMAL* RANGE state is restricted to: 
                                                    *[NEVER, ALWAYS]*
    **categoryId**                      ObjectId    Id of :ref:`owner category <api-resources-owners>` to assign to this state. 
                                                    Required when *notify* option is not *NEVER*
    **messageAway**                     String      *Optional*.
                                                    Custom message to send when the state becomes active (away from normal). 
                                                    Maximum of 255 characters. Leave empty for default message.
    **messageTowards**                  String      *Optional*.
                                                    Custom message to send when the state becomes inactive (towards normal). 
                                                    Maximum of 255 characters. Leave empty for default message.
    ================================    =========   ===========================================================================

Example replacing DISCRETE states

::

    {
        "statesType": "DISCRETE",
        "states": [        
            {
                "name": "OFF",
                "threshold": 0
            },
            {
                "name": "ON",
                "threshold": 1,
                "occurrences": 1,
                "isAlarm": true,
                "notify": "ALWAYS",
                "categoryId": "52969367593a1a3a32000012"
                "messageAway": "PUMP IS RUNNING"
                "messageTowards": "PUMP IS OFF"
            }
        ]
    }

Example updating existing DISCRETE states

::

    {
        "statesType": "DISCRETE",
        "states": [        
            {
                "_id": "52969367593a1a3a32000091",
                "name": "SIREN OFF"
            },
            {
                "_id": "52969367593a1a3a32000092",
                "name": "SIREN ON",
                "notify": "NEVER"
            }
        ]
    }


Example replacing RANGE states

::

    {
        "statesType": "RANGE",
        "states": [        
            {
                "name": "LOW",
                "threshold": 20
            },
            {
                "name": "NORMAL"
            },
            {
                "name": "HIGH",
                "threshold": 50
            },
            {
                "name": "CRITICAL",
                "threshold": 100,
                "occurrences": 2,
                "isAlarm": true,
                "notify": "ALWAYS",
                "categoryId": "52969367593a1a3a32000012"
            }
        ]
    }


.. only:: not latex

    |



Acknowledge node alarms
------------------------
Acknowledge active alarms for a node by its **id**. You can use the automatically assigned *_id* or your own *customId* prepended with '@'. 
Optionally provide a *comment* for the acknowledgement.

.. note:: 
    Only available for Location, Source and Parameter nodes. 
    Required API key permission: *Modify*

Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    =================   ========================    ======================================================================
    Argument            Example                     Description
    =================   ========================    ======================================================================
    **alarmTypes**      stateAlarm,controlAlarm     *Optional - Default is ALL*. 
                                                    Comma delimited list of specific alarms to acknowledge:
                                                    *[communicationsAlarm, configurationAlarm, controlAlarm, 
                                                    outdatedAlarm, overloadAlarm, stateAlarm]*
    =================   ========================    ======================================================================


Request
~~~~~~~~

::

    POST /api/v1/nodes/:id/alarms/acknowledge

::

    {
        "comment": "maintenance team investigating"
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

.. only:: not latex

    |



Clear node alarms
------------------
Clear active and acknowledged alarms for a node by its **id**. You can use the automatically assigned *_id* or your own *customId* prepended with '@'.

.. note:: 
    Only available for Location, Source and Parameter nodes. 
    Required API key permission: *Modify*

Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    =================   ========================    ======================================================================
    Argument            Example                     Description
    =================   ========================    ======================================================================
    **alarmTypes**      stateAlarm,controlAlarm     *Optional - Default is ALL*. 
                                                    Comma delimited list of specific alarms to clear:
                                                    *[communicationsAlarm, configurationAlarm, controlAlarm, 
                                                    outdatedAlarm, overloadAlarm, stateAlarm]*
    =================   ========================    ======================================================================


Request
~~~~~~~~

::

    POST /api/v1/nodes/:id/alarms/clear

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

.. only:: not latex

    |



Trigger an acquisition
-----------------------
Trigger an acquisition (*Acquire Now*) for a Source node by its **id**. You can use the automatically assigned *_id* or your own *customId* prepended with '@'.

.. note:: 
    Only available for Source nodes with Transports that allow for manual collection. 
    Required API key permission: *Modify*

Request
~~~~~~~~

::

    POST /api/v1/nodes/:id/operate/acquire

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

.. only:: not latex

    |



Retrieve node historic data
---------------------------
Retrieve historic data from a node by its **id**. You can use the automatically assigned *_id* or your own *customId* prepended with '@'. 
Data can be returned in JSON (:ref:`JTS <historic-jts>`) or CSV format. Use the :ref:`Historic resource<api-resources-historic>` for extracting historic data from multiple nodes in a single request.

.. note:: 
    Only available for Location and Parameter nodes. 
    Required API key permission: *Modify*

Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    ========================    ========================    =================================================================
    Argument                    Example                     Description
    ========================    ========================    =================================================================
    **format**                  JSON                        *Optional - Default is JSON*. 
                                                            Data format to return: *[JSON, CSV]*

    **startTime**               2014-08-16T02:00:00Z        *Required*. [#f3]_
                                                            :ref:`ISO8601<time-format-iso8601>` timestamp

    **endTime**                 2014-08-16T02:20:43Z        *Required*. [#f3]_
                                                            :ref:`ISO8601<time-format-iso8601>` timestamp

    **timezone**                Etc/UTC                     *Optional - Default is Etc/UTC*. 
                                                            :ref:`Timezone <timezone>` applied to timestamps. 
                                                            Aggregate *interval* and *baseTime* calculations will also use 
                                                            this zone.

    **timezoneAdjustForDst**    FALSE                       *Optional - Default is FALSE*. 
                                                            Flag to indicate if timestamps should be adjusted for DST in
                                                            selected *timezone*.

    **limit**                   100                         *Optional*. 
                                                            Maximum number of historic records to be returned

    **quality**                 FALSE                       *Optional - Default is FALSE*. 
                                                            Flag to include :ref:`quality <historic-quality>`

    **header**                  TRUE                        *Optional - Default is TRUE*. 
                                                            Flag to include header  

    **renderType**              VALUE                       *Optional - Default is node displayType*. 
                                                            Rendering of value: *[VALUE, STATE]*

    **renderFormat**            0.000                       *Optional - Default is node format*.
                                                            :ref:`Format <node-configuration-parameter-general>` to apply
                                                            when renderType is VALUE. '#' must be  
                                                            `URL Encoded <http://en.wikipedia.org/wiki/Percent-encoding>`_ 
                                                            as '%23'.

    **aggregate**               AVERAGE                     *Optional - Default is NONE (raw)*. 
                                                            Historic :ref:`aggregate <historic-aggregates>` to apply to 
                                                            extracted data.

    **baseTime**                D                           *Optional*. 
                                                            :ref:`OPC Base Time <relative-time>` required for aggregation.

    **interval**                3H                          *Optional*. 
                                                            :ref:`OPC Interval <relative-time>` required for aggregation.

    **baselineType**            RELATIVE                    *Optional - Default is ABSOLUTE*. 
                                                            Absolute will return data point values unmodified. Relative will 
                                                            subtract the first data point value from all subsequent data 
                                                            point values: *[ABSOLUTE, RELATIVE]*
    ========================    ========================    =================================================================

.. [#f3] startTime or endTime can be omitted when ``limit`` is specified.


Request
~~~~~~~~

::

    GET /api/v1/nodes/:id/historic

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



Update Parameter or Location historic data
-------------------------------------------
Update historic data for a Parameter or Location node by its **id**. You can use the automatically assigned *_id* or your own *customId* prepended with '@'. 
Data can be inserted in JSON (:ref:`JTS <historic-jts>`) or CSV format. Use the :ref:`Historic resource <api-resources-historic>` to update historic data for multiple nodes in a single request.

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

    **columnIndex**     0                           *Optional - Default is 0*. 
                                                    Index of column in data to be associated with this parameter. Will use
                                                    index specified in JTS Doc header if available or default to 0.
    =================   ========================    ======================================================================

Request
~~~~~~~~

::

    PUT /api/v1/nodes/:id/historic

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

.. only:: not latex

    |


Update Data Source historic data
---------------------------------
Update historic data for multiple parameters via a Data Source node **id**. You can use the automatically assigned *_id* or your own *customId* prepended with '@'. 
Data can be inserted in JSON (:ref:`JTS <historic-jts>`) format. New parameters will be automatically created.

The JTS Document must contain header columns. Each column must either specify a **series** or parameter **id**. 
If **id** is provided it will be used to match to the associated parameter under the current Data Source, otherwise 
the associated parameter will be matched using the **series** attribute.

If a column specified in the header can not be matched to an existing parameter (and **series** was provided), a new parameter will be created automatically. 
Optionally specify **name**, **dataType** (NUMBER, TEXT, TIME. Default is NUMBER) and **units** in the column header which will be used when creating new parameters.

.. note:: 
    Only available for Datasource nodes. 
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
    =================   ========================    ======================================================================

Request
~~~~~~~~

::

    PUT /api/v1/nodes/:id/historic

::

    {
        "docType": "jts",
        "version": "1.0",
        "header" : {
            "columns": {
                "0": {
                    "series": "temp1",
                    "name": "Temperature",
                    "dataType": "NUMBER",
                    "units": "°C"
                },
                "1": {
                    "id": "541a5a129bc9b4035f906d71"
                }
            }
        },
        "data": [
            { 
                "ts": "2014-09-17T07:30:00Z",
                "f": { "0": { "v": 25.05 } }
            },
            { 
                "ts": "2014-09-17T07:40:00Z",
                "f": { "0": { "v": 25.20 } }
            },
            { 
                "ts": "2014-09-17T07:50:00Z",
                "f": { "0": { "v": 25.14 }, "1": { "v": "text data here" } }
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

.. only:: not latex

    |


Update node historic data with a single value
----------------------------------------------
Update historic data for a node with a single *value* with optional *quality* and *timestamp*. You can use the automatically assigned *_id* or your own *customId* prepended with '@'.
If *timestamp* is omitted the time the request was made will be used. Existing values with the same timestamp will be overwritten.

.. note:: 
    Only available for Location and Parameter nodes. 
    Required API key permission: *Modify*


Request
~~~~~~~~

::

    PUT /api/v1/nodes/:id/historic/now

::

    {
        "value": 10,
        "quality": 192,
        "timestamp": "2015-01-09T23:38:00Z"
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

.. only:: not latex

    |



Delete node historic data
--------------------------
Delete all historic data from a node by its **id**. You can use the automatically assigned *_id* or your own *customId* prepended with '@'.

.. note:: 
    Only available for Location and Parameter nodes. 
    Required API key permission: *Modify*


Request
~~~~~~~~

::

    DELETE /api/v1/nodes/:id/historic

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

.. only:: not latex

    |


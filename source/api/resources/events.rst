.. _api-resources-events:

Events
=========

Events contain details about user interactions, alarm history and system generated notices.

.. contents:: Quick Links
    :depth: 1
    :local:

.. only:: not latex

    |

Event Attributes
-----------------
Consumers of Events should tolerate the addition of new attributes and variance in ordering of attributes with ease. Not all attributes appear in all contexts. It is generally safe to consider a nulled attribute, an empty set, and the absence of an attribute as the same thing.

.. table::
    :class: table-fluid

    =================   =========   ========================================================================================
    Attribute           Type        Description
    =================   =========   ========================================================================================
    **_class**          String      Identifies resource type: *io.eagle.models.event.*\*

    **_id**             ObjectId    Unique identifier for this event

    **level**           String      Detail level of event: 
                                    *[DEBUG, INFO, WARNING, ERROR]*

    **eventTime**       Time        :ref:`ISO8601<time-format-iso8601>` timestamp associated with the event

    **eventType**       String      Type of event: 
                                    *[ACQUISITION, CONFIGURATION, STATE, NOTIFICATION, CONTROL, SECURITY]*

    **message**         String      Event description

    **alarmState**      String      Indicate if event is associated with an alarm: 
                                    *[NONE, ACTIVE, ACKNOWLEDGED, CLEARED]*

    **nodeId**          ObjectId    Id of node associated with the event (where applicable)

    **nodeType**        String      _class of node associated with the event (where applicable)
    
    **workspaceId**     ObjectId    Associated Workspace _id

    **ownerId**         ObjectId    Associated Owner (account) _id

    **username**        String      User or process that triggered the event
    =================   =========   ========================================================================================

.. only:: not latex

    |

Retrieve events
--------------------
Retrieve a list of events available to the authenticated API key. Optionally *filter* by attribute values.


Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    =================   =====================   ================================================================
    Argument            Example                 Description
    =================   =====================   ================================================================
    **startTime**       2017-08-16T02:00:00Z    *Optional*. 
                                                :ref:`ISO8601<time-format-iso8601>` timestamp

    **endTime**         2017-08-16T02:20:43Z    *Optional*. 
                                                :ref:`ISO8601<time-format-iso8601>` timestamp

    **attr**            eventTime,message       *Optional*. 
                                                Comma delimited list of attributes to include in response

    **filter**          level($eq:DEBUG)        *Optional*. 
                                                :ref:`Filter <api-overview-request-arguments-filter>` the 
                                                records based on attribute value(s). 
                                                *Note: eventTime can not be used as a filter*

    **limit**           100                     *Optional - Default is 10000 when both startTime & 
                                                endTime are specified. 1000 when startTime or endTime is 
                                                omitted*. Maximum number of records to be returned. *1-10000*

    **skip**            50                      *Optional*. 
                                                Skip the first *n* records returned. Can be used with 
                                                ``limit`` to paginate results

    **sort**            eventTime(DESC)         *Optional - Default is eventTime(ASC)*. 
                                                Comma delimited list of attributes to sort by. Optionally 
                                                include sort direction in parentheses or default to ASC: 
                                                *[ASC, DESC]*
    =================   =====================   ================================================================


Request
~~~~~~~~

::

    GET /api/v1/events

Response
~~~~~~~~

::
    
    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8


::
    
    [
        {
            "_class": "io.eagle.models.event.Event",
            "_id": "58d3508c8d6a80f2bd7eaf2e",
            "alarmState": "NONE",
            "message": "Processed 60 records from sensors.dat [4 parameters updated]",
            "eventType": "ACQUISITION",
            "eventTime": "2017-03-23T04:35:24.000Z",
            "nodeId": "57d799d86a559fb79215b5c1",
            "nodeType": "io.eagle.models.node.source.data.TextParser",
            "level": "DEBUG",
            "workspaceId": "57e0a4d8a19b65042ad079c2",
            "username": "System"
        },
        {
            "_class": "io.eagle.models.event.Event",
            "_id": "58d0b9df0bb36d2965e5b745",
            "alarmState": "NONE",
            "message": "Rename node 'Cond' to 'Conductivity'",
            "eventType": "CONFIGURATION",
            "eventTime": "2017-03-21T05:27:59.000Z",
            "nodeId": "58bf63d57426a2b19ea63f54",
            "nodeType": "io.eagle.models.node.point.NumberPoint",
            "level": "INFO",
            "workspaceId": "577b5a821f704bb5a3f1411b",
            "username": "user@company.com"
        }
    ]

.. only:: not latex

    |


Create or Delete events
------------------------
You can :ref:`Create events <api-resources-nodes-events-post>` or :ref:`Delete events <api-resources-nodes-events-delete>` for a specific node via the :ref:`Nodes Resource <api-resources-nodes>`.

.. only:: not latex

    |

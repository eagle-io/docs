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
    **alarmState**      String      Indicate if event is associated with an alarm: 
                                    *[NONE, ACTIVE, ACKNOWLEDGED, CLEARED]*
    **message**         String      Event description
    **eventType**       String      Type of event: 
                                    *[ACQUISITION, CONFIGURATION, STATE, NOTIFICATION, CONTROL, SECURITY]*
    **eventTime**       Time        :ref:`ISO8601<time-format-iso8601>` timestamp associated with the event
    **nodeId**          ObjectId    Id of node associated with the event (or null)
    **nodeType**        String      _class name of node associated with the event (or null)
    **level**           String      Detail level of event: 
                                    *[DEBUG, INFO, WARNING, ERROR]*
    **workspaceId**     ObjectId    Associated Workspace _id
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
    **attr**            _id,nodeId,message      *Optional*. 
                                                Comma delimited list of attributes to include in response

    **filter**          level($eq:DEBUG)        *Optional*. 
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
            "_id": "53ce0b6a0eba8dc46900000f"
        }
    ]

.. only:: not latex

    |


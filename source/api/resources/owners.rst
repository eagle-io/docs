.. _api-resources-owners:

Owners
=========

Owners contain details about the eagle.io account associated with a Workspace or Device.

.. contents:: Quick Links
    :depth: 1
    :local:

.. only:: not latex

    |

Owner Attributes
-----------------
Consumers of Owners should tolerate the addition of new attributes and variance in ordering of attributes with ease. Not all attributes appear in all contexts. It is generally safe to consider a nulled attribute, an empty set, and the absence of an attribute as the same thing.

.. table::
    :class: table-fluid

    =================   =========   =======================================================================
    Attribute           Type        Description
    =================   =========   =======================================================================
    **_class**          String      Identifies resource type: *io.eagle.models.owner.Owner*
    **_id**             ObjectId    Unique identifier for this owner
    **accountName**     String      Name of the account
    **categories**      Array       Array of notification categories configured for this owner
    **createdTime**     Time        :ref:`ISO8601<time-format-iso8601>` timestamp the account was created.
    **slug**            String      Used as part of Node full name path
    =================   =========   =======================================================================

.. only:: not latex

    |

Retrieve all owners
--------------------
Retrieve a list of all owners visible to the authenticated user. Optionally *filter* by attribute values.


Arguments
~~~~~~~~~

.. table::
    :class: table-fluid

    =================   =====================   ================================================================
    Argument            Example                 Description
    =================   =====================   ================================================================
    **attr**            _id,slug                *Optional*. 
                                                Comma delimited list of attributes to include in response

    **filter**          slug($eq:mycomp87)      *Optional*. 
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

    GET /api/v1/owners

Response
~~~~~~~~

::
    
    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8


::
    
    [
        {
            "_class": "io.eagle.models.owner.Owner",
            "_id": "5424fbe96c4728a166f0d725",
            "accountName": "My Personal Account",
            "createdTime": "2014-01-26T05:38:49.167Z",
            "slug": "mypers42",
            "categories": [
                {
                    "name": "Maintenance",
                    "index": 0,
                    "_id": "52969367593a1a3a32000012"
                },
                {
                    "name": "Operations",
                    "index": 1,
                    "_id": "52969367593a1a3a32000011"
                },
                {
                    "name": "Critical",
                    "index": 2,
                    "_id": "52969367593a1a3a32000010"
                }
            ]
        },
        {
            "_class": "io.eagle.models.owner.Owner",
            "_id": "52969365593a1a3a3200000f",
            "accountName": "My Company Account",
            "createdTime": "2013-11-28T00:50:47.543Z",
            "slug": "mycomp87",
            "categories": [
                {
                    "name": "LOW",
                    "index": 0,
                    "_id": "52969367593a1a3a32000022"
                },
                {
                    "name": "MEDIUM",
                    "index": 1,
                    "_id": "52969367593a1a3a32000021"
                },
                {
                    "name": "HIGH",
                    "index": 2,
                    "_id": "52969367593a1a3a32000020"
                }
            ]
        }
    ]

.. only:: not latex

    |

Retrieve an owner 
-----------------
Retrieve an owner by its **_id**.

Arguments
~~~~~~~~~

.. table::
    :class: table-fluid
    
    =================   =================   ================================================================
    Argument            Example             Description
    =================   =================   ================================================================
    **attr**            _id,slug            *Optional.* 
                                            Comma delimited list of attributes to include in response
    =================   =================   ================================================================

Request
~~~~~~~~

::

    GET /api/v1/owners/:_id

Response
~~~~~~~~

::
    
    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8

::
    
    {
        "_class": "io.eagle.models.owner.Owner",
        "_id": "5424fbe96c4728a166f0d725",
        "accountName": "My Personal Account",
        "createdTime": "2014-01-26T05:38:49.167Z",
        "slug": "mypers42",
        "categories": [
            {
                "name": "Maintenance",
                "index": 0,
                "_id": "52969367593a1a3a32000012"
            },
            {
                "name": "Operations",
                "index": 1,
                "_id": "52969367593a1a3a32000011"
            },
            {
                "name": "Critical",
                "index": 2,
                "_id": "52969367593a1a3a32000010"
            }
        ]
    }



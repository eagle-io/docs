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
Consumers of Owners should tolerate the addition of new attributes and variance in ordering of attributes with ease. Not all attributes appear in all contexts. 
It is generally safe to consider a nulled attribute, an empty set, and the absence of an attribute as the same thing. 
Restricted attributes are only available when using an API Key with **account** level access.

.. table::
    :class: table-fluid

    ========================    =========   =========   ===========================================================================
    Standard attributes         Type        Update      Description
    ========================    =========   =========   ===========================================================================
    **_class**                  String                  Identifies resource type: *io.eagle.models.owner.Owner*
    **_id**                     ObjectId                Unique identifier for this owner
    **accountName**             String      Yes         Name of the account
    **accountType**             String                  Type of account
    **categories**              Array                   Array of notification categories configured for this owner
    **createdTime**             Time                    :ref:`ISO8601<time-format-iso8601>` timestamp the account was created.
    **quality**                 Object                  Quality *codes* and configuration
    **slug**                    String                  Used as part of Node full name path
    ========================    =========   =========   ===========================================================================

.. table::
    :class: table-fluid

    ========================    =========   =========   ===========================================================================
    Restricted attributes       Type        Update      Description
    ========================    =========   =========   ===========================================================================
    **administrators**          Array                   Array of :ref:`administrator users <api-owners-update-administrators>`
    **groups**                  Array                   Array of :ref:`groups <api-owners-update-groups>` and associated users
    ========================    =========   =========   ===========================================================================


.. only:: not latex

    |


Retrieve owner
---------------
Retrieve the owner associated with the API key.

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

    GET /api/v1/owners/account

Response
~~~~~~~~

::
    
    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8

::
    
    {
        "_class": "io.eagle.models.owner.Owner",
        "_id": "5424fbe96c4728a166f0d725",
        "accountName": "Environment Inc",
        "accountType": "STANDARD",
        "administrators": [
            {
                "user": "rlewis@company.com",
                "name": {
                    "first": "Rod",
                    "last": "Lewis"
                },
                "lastLoginTime": "2021-12-16T03:17:35.170Z"
            }
        ],
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
        ],
        "createdTime": "2022-01-26T05:38:49.167Z",
        "groups": [
            {
                "_id": "61bac74a84cac62fcbfe2c3c",
                "name": "Engineering team",
                "users": [
                    {
                        "user": "jsmith@company.com",
                        "name": {
                            "first": "Jane",
                            "last": "Smith"
                        },
                        "lastLoginTime": "2022-01-04T11:30:22.310Z"
                    }
                ]
            }
        ],
        "slug": "mypers42"
    }

.. only:: not latex

    |


Update owner
---------------
Update the owner associated with the API key. 
Updates are limited to the attributes listed with the *Update* flag. 
Multiple attributes can be updated in a single request.

The updated owner will be returned in the response if the request is successful. You can optionally limit the returned attributes by specifying the **attr** argument.

.. note:: 
    Required API key permission: *Modify*. Required API key level: *Account*.

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

    **notify**          TRUE                *Optional - Default is FALSE*.
                                            Notify users when they have been granted/revoked administrator
                                            access or a new user profile (as a result of this request)
    =================   =================   ================================================================

Request
~~~~~~~~

::

    PUT /api/v1/owners/account

::

    {
        "accountName": "My Renamed Account"
    }

Response
~~~~~~~~

::

    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8

::

    {
        "_class": "io.eagle.models.owner.Owner",
        "_id": "5424fbe96c4728a166f0d725",
        "accountName": "My Renamed Account",
        ...
    }


.. _api-owners-update-administrators:

.. _api-owners-update-groups:

Retrieve account usage
-----------------------
Retrieve account usage for an owner (including managed accounts) associated with the API key. 
TRIAL and DISABLED managed accounts are not included in Source usage. 

.. note:: 
    This resource is currently in development and may change prior to finalization. 
    Required API key access level: *Account*. Not accessible using managed account API keys.

Request
~~~~~~~~

::

    GET /api/v1/owners/account/usage

Response
~~~~~~~~

::
    
    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8

::
    
    {
        "rates": {
            "attachmentsource": 0.7,
            "datasource": {
                "small": 0.3,
                "medium": 0.7,
                "large": 1
            },
            "sms": 1
        },
        "total": {
            "source": {
                "usage": 32.4,
                "usageLimit": 50
            },
            "sms": {
                "usage": 30,
                "usageLimit": 250
            }
        },
        "accounts": [
            {
                "_id": "5424fbe96c4728a166f0d725",
                "accountName": "My Personal Account",
                "accountType": "STANDARD",
                "usage": {
                    "attachmentsource": 0.7,
                    "datasource": {
                        "small": 0.3,
                        "medium": 1.4,
                        "large": 20
                    },
                    "sms": 10
                }
            },
            {
                "_id": "5d7adc82e9e941211c57032c",
                "accountName": "Managed account",
                "accountType": "MANAGED",
                "usage": {
                    "attachmentsource": 0,
                    "datasource": {
                        "small": 0,
                        "medium": 7,
                        "large": 3
                    },
                    "sms": 20
                }
            }
        ]
    }



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
    **accountType**     String      Type of account
    **categories**      Array       Array of notification categories configured for this owner
    **createdTime**     Time        :ref:`ISO8601<time-format-iso8601>` timestamp the account was created.
    **slug**            String      Used as part of Node full name path
    =================   =========   =======================================================================

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
        "accountName": "My Personal Account",
        "accountType": "STANDARD",
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



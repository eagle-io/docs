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
    **administrators**          Array       Yes         Array of :ref:`administrator users <api-owners-update-administrators>`
    **groups**                  Array       Yes         Array of :ref:`groups <api-owners-update-groups>` and associated users
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

.. _api-owners-update-args:

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
                                            access or a new user profile created
                                            (as a result of this request)
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

Complex attribute updates
~~~~~~~~~~~~~~~~~~~~~~~~~
Certain attributes such as Administrator and Groups have specific update requirements:

.. contents:: 
    :depth: 1
    :local:

| 


.. _api-owners-update-administrators:

Administrators
`````````````````
Administrators can be included in the update request. This will replace existing administrators.

If the user email address does not already exist in the system, a new user profile will be created and *profileActivateUrl* will be returned in the response.
Use the *notify=TRUE* :ref:`argument <api-owners-update-args>` to automatically send a welcome email to newly created users (or use the `profileActivateUrl` to manually complete the user profile setup).

When adding a new user (profile does not exist) you can optionally include attributes: *name*, *phone*, *timezone*, *timezoneAdjustForDst* and *timeFormat*.

.. note::
    Removing a user as an administrator will also remove their :ref:`user notification subscriptions <api-nodes-notifications-subscribe>` for any workspace nodes they no longer have access to. 

    The account owner and account manager administrators (for managed accounts) automatically inherit implicit administrator access and are not included in the administrators array.

**Example replacing administrators**
::

    PUT /api/v1/owners/account

::

    {
        "administrators": [
            {
                "user": "rlewis@company.com"
            },
            {
                "user": "new@company.com",
                "name": {
                    "first": "New",
                    "last": "User"
                },
                "phone": "+61000000001",
                "timezone": "Australia/Sydney",
                "timezoneAdjustForDst": true,
                "timeFormat": "YYYY-MM-DD HH:mm:ss"
            }
        ]
    }

**Response**
::

    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8

::

    {
        "administrators": [
            {
                "user": "rlewis@company.com",
                "name": {
                    "first": "Rod",
                    "last": "Lewis"
                },
                "lastLoginTime": "2021-12-16T03:17:35.170Z"
            },
            {
                "user": "new@company.com",
                "name": {
                    "first": "New",
                    "last": "User"
                },
                "profileActivateUrl": "https://app.eagle.io/auth/setupprofile/ca4d1da0-8231-46df-af69-df1b2f1a8b5c"
            }
        ],
        ...
    }


.. only:: not latex

    |

.. _api-owners-update-groups:

Groups
`````````````````````
Groups and associated users can be included in the update request. This will merge and replace existing groups.

For each group in the request, if an *_id* attribute is provided it will be used to update an existing group (which allows the group name to be changed as part of the update).
If the *_id* attribute is not provided or does not match an existing group, the *name* attribute will be used to find an existing group to update.

.. note::
    If an existing group is not found, a new group entity will be created. Any groups previously configured that do not match will be permanently removed.

    Removing a group will also remove its :ref:`group notification subscriptions <api-nodes-notifications-subscribe>`.


When specifying the users associated with a group, if the user email address does not already exist in the system, a new user profile will be created and *profileActivateUrl* will be returned in the response.
Use the *notify=TRUE* :ref:`argument <api-owners-update-args>` to automatically send a welcome email to newly created users (or use the `profileActivateUrl` to manually complete the user profile setup).

When adding a new user (profile does not exist) you can optionally include attributes: *name*, *phone*, *timezone*, *timezoneAdjustForDst* and *timeFormat*.

.. table::
    :class: table-fluid

    ================================    =========   ===========================================================================
    Group attributes                    Type        Description
    ================================    =========   ===========================================================================
    **_id**                             ObjectId    *Optional*. Id of existing group to update.

    **name**                            String      *Required*. Name to assign to this group.
    **users**                           Array       *Required*. Array of users to assign to this group. 
    ================================    =========   ===========================================================================

**Example updating groups**
::

    PUT /api/v1/owners/account

::

    {
        "groups": [
            {
                "name": "New Group",
                "users": [
                    {
                        "user": "rlewis@company.com"
                    },
                    {
                        "user": "new@company.com",
                        "name": {
                            "first": "New",
                            "last": "User"
                        },
                        "phone": "+61000000001",
                        "timezone": "Australia/Sydney",
                        "timezoneAdjustForDst": true,
                        "timeFormat": "YYYY-MM-DD HH:mm:ss"
                    }
                ]
            }, 
            {
                "_id": "61bac74a84cac62fcbfe2c3c",
                "users": []
            }
        ]
    }

**Response**
::

    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8

::

    {
        "groups": [
            {
                "_id": "61bac74a84cac62fcbfe47aa",
                "name": "New Group",
                "users": [
                    {
                        "user": "rlewis@company.com",
                        "name": {
                            "first": "Rod",
                            "last": "Lewis"
                        },
                        "lastLoginTime": "2021-12-16T03:17:35.170Z"
                    },
                    {
                        "user": "new@company.com",
                        "name": {
                            "first": "New",
                            "last": "User"
                        },
                        "profileActivateUrl": "https://app.eagle.io/auth/setupprofile/ca4d1da0-8231-46df-af69-df1b2f1a8b5c"
                    }
                ]
            },
            {
                "_id": "61bac74a84cac62fcbfe2c3c",
                "name": "Engineering team",
                "users": []
            }
        ],
        ...
    }


.. only:: not latex

    |

Create owner groups
--------------------
Create new owner group(s). 
The complete array of groups will be returned in the response if the request is successful.

Alternatively :ref:`update or replace multiple groups <api-owners-update-groups>` via owner update.

.. table::
    :class: table-fluid

    ================================    =========   ===========================================================================
    Group attributes                    Type        Description
    ================================    =========   ===========================================================================
    **name**                            String      *Required*. Name to assign to this group.
    **users**                           Array       *Required*. Array of users to assign to this group. 
    ================================    =========   ===========================================================================

Request
~~~~~~~~
::

    POST /api/v1/owners/account/groups

::

    [   
        {
            "name": "New Group",
            "users": [
                {
                    "user": "rlewis@company.com"
                },
                {
                    "user": "new@company.com",
                    "name": {
                        "first": "New",
                        "last": "User"
                    },
                    "phone": "+61000000001",
                    "timezone": "Australia/Sydney",
                    "timezoneAdjustForDst": true,
                    "timeFormat": "YYYY-MM-DD HH:mm:ss"
                }
            ]
        },
        {
            "name": "New Group 2",
            "users": []
        },
    ]

Response
~~~~~~~~
::

    HTTP/1.1 201 Created
    Content-Type: application/json; charset=utf-8


.. only:: not latex

    |

Update owner group
--------------------
Update an existing owner group by its *_id*. 
The updated group will be returned in the response if the request is successful.

Alternatively :ref:`update or replace multiple groups <api-owners-update-groups>` via owner update.

.. table::
    :class: table-fluid

    ================================    =========   ===========================================================================
    Group attributes                    Type        Description
    ================================    =========   ===========================================================================
    **name**                            String      *Optional*. Name to assign to this group.
    **users**                           Array       *Optional*. Array of users to assign to this group. 
    ================================    =========   ===========================================================================

Request
~~~~~~~~
::

    PUT /api/v1/owners/account/groups/:id

::

    {
        "name": "Updated Group",
        "users": [
            {
                "user": "rlewis@company.com"
            }
        ]
    }

Response
~~~~~~~~
::

    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8


.. only:: not latex

    |

Remove owner group
--------------------
Permanently delete an existing group by its *_id*. 

Alternatively :ref:`update or replace multiple groups <api-owners-update-groups>` via owner update.

Request
~~~~~~~~
::

    DELETE /api/v1/owners/account/groups/:id

Response
~~~~~~~~
::

    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8


.. only:: not latex

    |

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


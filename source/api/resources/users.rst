.. _api-resources-users:

Users
=========

Users contain details about eagle.io user profiles.

.. contents:: Quick Links
    :depth: 1
    :local:

.. only:: not latex

    |

User Attributes
-----------------
Consumers of Users should tolerate the addition of new attributes and variance in ordering of attributes with ease. Not all attributes appear in all contexts. It is generally safe to consider a nulled attribute, an empty set, and the absence of an attribute as the same thing.

.. table::
    :class: table-fluid

    =================   =========   ====================================================================
    Attributes          Type        Description
    =================   =========   ====================================================================
    **_class**          String      Identifies resource type: *io.eagle.models.owner.User*
    **_id**             ObjectId    Unique identifier for this owner
    **contact**         Object      
    | **email**         String      Email address of user
    | **phone**         String      Fully qualified international phone number
    **createdTime**     Time        :ref:`ISO8601<time-format-iso8601>` timestamp the user was created.
    **name**            Object      
    | **first**         String      First name of user
    | **last**          String      Last name of user
    **timeFormat**      String      :ref:`Time format <time-format-tokens>` for timestamp display
    **timezone**        String      :ref:`Timezone <timezone>` for timestamp display
    =================   =========   ====================================================================

.. only:: not latex

    |

Retrieve your user profile
--------------------------
Retrieve the authenticated users profile.

Arguments
~~~~~~~~~

.. table::
    :class: table-fluid
    
    =================   =================   ================================================================
    Argument            Example             Description
    =================   =================   ================================================================
    **attr**            _id,name            *Optional.* 
                                            Comma delimited list of attributes to include in response
    =================   =================   ================================================================

Request
~~~~~~~~

::

    GET /api/v1/users/me

Response
~~~~~~~~

::
    
    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8

::
    
    {
        "_class": "io.eagle.models.user.User",
        "_id": "540d1edbeaec496ecc61ff6e",
        "contact": {
            "email": "user@company.com",
            "phone": "+61400000001"
        },
        "createdTime": "2014-09-08T03:13:31.488Z",
        "name": {
            "first": "John",
            "last": "Citizen"
        },
        "timeFormat": "YYYY-MM-DD HH:mm:ss",
        "timezone": "Australia/Sydney"
    }



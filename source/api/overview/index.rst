.. _api-overview:

Quick Start
===============

The eagle.io API conforms to the design principles of `Representational State Transfer (REST) <http://en.wikipedia.org/wiki/Representational_State_Transfer>`_.

Our API is designed to have predictable, resource-oriented URLs and to use HTTP response codes to indicate API errors. We use built-in HTTP features which can be understood by off-the-shelf HTTP clients. 

.. only:: not latex

    |

.. _api-overview-authentication:

Authentication
--------------

You authenticate to the eagle.io API by providing one of your :ref:`API keys <user-api-keys>` in the **X-Api-Key** request header::

    GET /api/v1/nodes/
    Host: eagle.io
    X-Api-Key: xxxxxxxxxxxxxxxxxxxxxxxxxxxxx

You can manage your API keys from your :ref:`user preferences <user-preferences>`. You can have multiple API keys active at one time. Your API keys carry many privileges, so be sure to keep them secret.

All API requests must be made over **HTTPS**. Calls made over plain HTTP will fail. You must authenticate for all requests.

.. only:: not latex

    |

HTTP Methods
-------------

The following HTTP methods are used to determine which action to take on a particular resource:

.. table::
    :class: table-fluid
    
    =========   ===================================================
    Method      Action
    =========   ===================================================
    GET         Retrieve the current representation of a resource
    POST        Create a new resource or action
    PUT         Update a specific resource
    DELETE      Delete a specific resource
    =========   ===================================================


.. note::
    If your client does not support the required method the **X-HTTP-Method-Override** header can be added to a POST request to inform the server of the desired method.

::

    POST /api/v1/nodes/542a5a129bc9b4035f906d70
    Host: eagle.io
    X-Api-Key: xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    X-HTTP-Method-Override: DELETE


.. only:: not latex

    |

.. _api-overview-headers:

HTTP Headers
-------------

The following HTTP headers are used by the eagle.io API:

.. table::
    :class: table-fluid table-col1-nowrap

    =========================   =================   =========   ===============================================================================
    Header                      Value               Required?   Description
    =========================   =================   =========   ===============================================================================
    X-Api-Key                   YOUR_API_KEY        Yes         Unique API authentication key generated 
                                                                from :ref:`user preferences <user-preferences>`
    Content-Type                application/json    Yes         All requests containing JSON data in the body must specify this header
    Content-Encoding            gzip                No          Request body is gzip compressed
    Accept-Encoding             gzip                No          Response will use gzip compression when content-length exceeds 1024 bytes
    X-HTTP-Method-Override      put, delete         No          Clients not supporting PUT/DELETE methods can send via POST with this header
    =========================   =================   =========   ===============================================================================

.. only:: not latex

    |

.. _api-overview-http-status-codes:

HTTP Status Codes
------------------

The eagle.io API will return appropriate `HTTP status codes <http://en.wikipedia.org/wiki/List_of_HTTP_status_codes>`_ for every request.

.. table::
    :class: table-fluid
    
    =====   =================================================   ========================================================
    Code    Status                                              Description
    =====   =================================================   ========================================================
    200     OK                                                  Completed successfully
    201     Created                                             Resource created successfully
    202     Operation accepted                                  Operation accepted but not yet complete
    304     Not Modified                                        There was no new data to return
    400     Bad Request                                         The request was invalid or cannot be otherwise served
    401     Unauthorized                                        Authentication failed
    403     Forbidden                                           No permission for HTTP Method or requested resource
    404     Requested resource not found                        Requested resource not found
    405     Method Not Allowed                                  Resource does not support the requested HTTP Method
    413     Request Too Large                                   Request body or response exceeds limit
    429     Too Many Requests                                   Request has been rejected for exceeding usage limits
    500     Internal Server Error                               Error occurred processing the request
    503     Service Unavailable                                 Service is temporarily unavailable    
    =====   =================================================   ========================================================

Error and Status messages
~~~~~~~~~~~~~~~~~~~~~~~~~
Error and Status messages are always returned in a standard JSON format with the status code and message in the body of the response.
An example error response::

    {"error": {"code": 405, "message": "Method not allowed for requested resource"}}

Status messages are returned for certain requests that have been accepted but do not return a resource in the response body::

    {"status": {"code": 202, "message": "Operation accepted but not yet complete"}}

.. only:: not latex

    |

.. _api-overview-compression:

HTTP Compression
------------------

HTTP compression is supported on both incoming and outgoing requests. Compression is highly recommended where large requests are being submitted.

We use the standard HTTP method of specifying compression encoding, with support for the gzip compression schema.


Incoming compression
~~~~~~~~~~~~~~~~~~~~
In order to send compressed data to the eagle.io API it is necessary to send it with gzip encoding. 
Compress your data using gzip and add the **Content-Encoding** header to your request::

    Content-Encoding: gzip


Outgoing compression
~~~~~~~~~~~~~~~~~~~~
To receive data from the eagle.io API in gzip compressed format simply add the **Accept-Encoding** header to your request::
    
    Accept-Encoding: gzip

Any response exceeding 1024 bytes will be compressed and the **Content-Encoding** header added.

.. only:: not latex

    |

.. _api-overview-resource-attributes:

Resource Attributes
-------------------

:ref:`API Resource <api-resources>` requests commonly result in a response containing the current representation of one or more resources. 
The representations are a combination of attributes used to describe the individual resources.  

Consumers of Resources should tolerate the addition of new attributes and variance in ordering of attributes with ease. Not all attributes appear in all contexts. It is generally safe to consider a nulled attribute, an empty set, and the absence of an attribute as the same thing.

Attributes are assigned specific *Data types* which are enforced for all requests and include:

.. table::
    :class: table-fluid table-col1-nowrap

    =================   =============================   =======================================================================     
    Data type           Example                         Description
    =================   =============================   =======================================================================  
    **Number**          12.4                            Any number. Also expressed as **Int32** or **Int64** for integers and 
                                                        **Double** for double precision floating point numbers
    **Boolean**         true                            *true* or *false*
    **String**          "Valve Open"                    Any text surrounded in quotes
    **Time**            "2014-09-24T19:48:32.000Z"      :ref:`ISO8601<time-format-iso8601>` timestamp surrounded in quotes
    **ObjectId**        "53ce0b6a0eba8dc46900000f"      Unique identifier surrounded in quotes
    **Array**           ["item1", "item2"]              List of items. May contain any data type but generally not mixed
    **Object**          {"key": "value"}                Nested attributes
    **Variable**                                        May contain various data types but usually specific for 
                                                        each resource _class
    =================   =============================   =======================================================================     

.. only:: not latex

    |

.. _api-overview-request-arguments:

Request Arguments
-----------------

Most :ref:`API Resource <api-resources>` requests allow for arguments to be specified as part of the request URL.
While some resources have *required* arguments, most are *optional* and are used to alter, refine or filter the response.

Arguments are specified using the standard `Query string <http://en.wikipedia.org/wiki/Query_string>`_ format and should be appended to the resource endpoint, prefixed with a '?'.

::

    /api/v1/nodes/?arg1=val1&arg2=val2&arg3=val3...

Certain resource request arguments may contain sub-arguments (denoted by indentation in arguments table). 
Sub-arguments should be included in parentheses with key/value separated by colons and multiple arguments semicolon delimited.

::

    /api/v1/nodes/?arg1=val1(subarg1:subval1;subarg2:subval2...),val2,val3


All special characters should be `Url Encoded <http://en.wikipedia.org/wiki/Percent-encoding>`_.


.. _api-overview-request-arguments-filter:

Filter Argument
~~~~~~~~~~~~~~~

Certain :ref:`API Resource <api-resources>` requests allow for an optional ``filter`` argument to be specified.
When a filter is provided, only resources with attributes matching the filter criteria will be returned. If no criteria matches than an empty set will be returned. 

The filter argument includes the attribute name with an operator and operand colon delimited and included in parentheses directly after the attribute name::

    /?filter=attribute(operator:operand)

An example filter request for recently created nodes::

    /api/v1/nodes/?filter=createdTime($gt:2015-01-01T00:00:00Z)


The following operators can be used when specifying filter criteria. Use is limited to specific attribute data types:

.. table::
    :class: table-fluid

    =================   =========================================   ===========================
    Operator            Supported data types                        Description
    =================   =========================================   ===========================
    **$gt**             Number, Time                                Greater than

    **$gte**            Number, Time                                Greater than or equal to

    **$lt**             Number, Time                                Less than

    **$lte**            Number, Time                                Less than or equal to

    **$eq**             Number, Time, Boolean, String, ObjectId     Equal

    **$ne**             Number, Time, Boolean, String, ObjectId     Not equal

    **$match**          String                                      Text match
    =================   =========================================   ===========================

Multiple filter criteria can be specified using logical AND, OR operators. 
To specify an AND between criteria, use a comma character ','. 
To specify an OR between criteria, use a pipe character '|' `Url Encoded <http://en.wikipedia.org/wiki/Percent-encoding>`_ as '**%7C**'.
The AND criteria is always evaluated before the OR criteria.

An example of a multi-criteria filter request for retrieving nodes with (name matching Batt* AND isActive true) OR (createdTime greater than 2015-01-01T00:00:00Z)::

    /api/v1/nodes/?filter=name($match:Batt),isActive($eq:true)%7CcreatedTime($gt:2015-01-01T00:00:00Z)

.. note:: 
    If the attribute data type is **Variable** you must explicitly specify the data type of the operand. 

Example specifying currentValue operand as a Time::
    
    /?filter=currentValue($eq:Time(2015-01-01T00:00:00Z))

.. only:: not latex

    |

Data Formats
------------

The eagle.io API uses `JSON data format <http://json.org>`_ by default for all requests and responses.
Certain resources allow for alternate data formats by specifying the **format** argument as part of the request URL::

    /?format=csv

**Content-Type** is always included in the header of the response::

    Content-Type: text/csv; charset=utf-8


Request
~~~~~~~~

**Content-Type** must be defined in the header of all requests that contain data::

    Content-Type: application/json


The body of the request must be valid JSON or a **400 Bad Request** response will be returned. The complete HTTP request should not exceed 10MB before compression. A **413 Request Too Large** response will be returned for requests exceeding the size limit.

Example request for inserting historic data:

::

    POST /api/v1/nodes/542a5a129bc9b4035f906d70/historic/
    Host: eagle.io
    X-Api-Key: xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    Content-Type: application/json

::
    
    {
        "docType": "jts",
        "version": "1.0",
        "data": [
            { "ts": "2014-10-07T01:25:00.000Z", "f": { "0": { "v": 10.0, "q": 100 } } },
            { "ts": "2014-10-07T01:26:00.000Z", "f": { "0": { "v": 10.2, "q": 100 } } }
        ]
    }

Response
~~~~~~~~~

Example response from a Nodes GET request:

::

    HTTP/1.1 200 OK
    Content-Length: 831
    Content-Type: application/json; charset=utf-8

::

    {
        "_class": "io.eagle.models.node.point.NumberPoint",
        "_id": "541a5a129bc9b4035f906d70",
        "createdTime": "2014-09-18T04:05:38.699Z",
        "currentStateId": "541a58dc9bc9b4035f906938",
        "currentTime": "2014-10-06T21:06:29.000Z",
        "currentValue": 157.7,
        "displayType": "VALUE",
        "format": "0.###",
        "isActive": true,
        "metadata": [],
        "name": "Temperature",
        "oldestStateId": "541a58dc9bc9b4035f906938",
        "oldestTime": "2014-02-13T22:58:53.000Z",
        "oldestValue": 144.7,
        "ownerId": "52969365593a1a3a3200000f",
        "parentId": "541a59fb9bc9b4035f906d58",
        "previousTime": "2014-10-06T21:01:28.000Z",
        "previousValue": 164.1,
        "states": [
            {
                "name": "NORMAL",
                "index": 0,
                "categoryId": null,
                "_id": "541a58dc9bc9b4035f906938",
                "notify": "NEVER",
                "description": "",
                "isAlarm": false,
                "_class": "io.eagle.models.node.point.PointState"
            }
        ],
        "statesType": "RANGE",
        "units": "",
        "workspaceId": "536884ecb5a76fd5d3000014"
    }

.. only:: not latex

    |

Versioning
------------

The API version number is specified as part of the URL.
**v1** is the currently supported version and has a base URL::

    https://eagle.io/api/v1/

As we make updates and additions to the eagle.io API, we will only make changes, add new features and/or implement fixes to the current released API that do not affect backward compatibility.

.. only:: not latex

    |

.. _api-overview-usage-limits:

Usage Limits
-------------

API usage is rate limited by IP Address to prevent misuse.
If you exceed more than 1000 requests per 15 minute window the request will be refused and you will recevie a **429 Too Many Requests** response.

.. only:: not latex

    |

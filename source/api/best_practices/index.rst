.. _api-best-practices:

Best Practices
==============

As you build with the eagle.io API, take note of the following best practices to ensure you develop safe, reliable and efficient code.

.. only:: not latex

    |

Enforce Security
-----------------
All requests must be made over **HTTPS**.

:ref:`API keys <user-api-keys>` should be kept secret and the *read-only* permission assigned to keys that only need to perform read operations (GET requests).
Account owners or managers with access to multiple Workspaces are advised to create additional user accounts for the sole purpose of API access with User Permissions assigned to individual Workspaces.

.. only:: not latex

    |

Use Compression for large requests
-----------------------------------
Take advantage of :ref:`HTTP compression <api-overview-compression>` for sending and receiving large requests.

.. only:: not latex

    |

Limit Size and Rate of requests
---------------------------------
When working with :term:`time series` data, ensure you limit the size of the requests for both extraction and insertion. If the request or response is too large or exceeds our processing time threshold, the **413 Request Too Large** error response will be returned.

You should limit the rate of requests to the API to ensure you do not exceed the :ref:`usage limits <api-overview-usage-limits>`.

.. only:: not latex

    |

Handle Errors and Status responses
-----------------------------------
Responses will always use :ref:`HTTP Status Codes <api-overview-http-status-codes>` to indicate the result of the request. Be prepared to handle unexpected errors which may arise from:

- Large or long running requests
- Moved, renamed or deleted resources
- User permission and account changes
- Usage limits exceeded
- Service temporarily unavailable

.. only:: not latex

    |

Discover Node Ids from the user interface
-----------------------------------------
Enable the :ref:`Display Node Ids in properties dialog <user-api-keys>` option to quickly discover Node Id's from the user interface.
The Node Id will be shown in the associated Node properties dialog.

.. only:: not latex

    |

Use Development Tools for testing
----------------------------------
Use development tools such as `cURL <http://curl.haxx.se>`_ or `Postman <http://www.getpostman.com>`_ to test API requests and responses. We recommend `Postman <http://www.getpostman.com>`_ for its simple to use, powerful user interface.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: api_dev_postman.png
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: api_dev_postman.png

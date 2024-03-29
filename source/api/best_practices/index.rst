.. meta::
   :description: As you build with the eagle.io API, take note of the following best practices to ensure you develop safe, reliable and efficient code. API for remote environmental monitoring software and sensor data acquisition.

.. _api-best-practices:

Best Practices
==============

As you build with the `eagle.io <https://eagle.io>`_ API, take note of the following best practices to ensure you develop safe, reliable and efficient code.

.. only:: not latex

    |

Enforce Security
-----------------
All requests must be made over **HTTPS**.

:ref:`API keys <management-security-apikeys>` should be kept secret and the *Read only* permission assigned to keys that only need to perform read operations (GET requests).
For additional security, you can restrict the API key to certain Workspaces by setting the *Access level* to *Limited Workspaces*.

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

The body of the request should not exceed 5MB before compression. The query string should not exceed 4096 bytes. A **413 Request Too Large** response will be returned for requests exceeding the size limit.

You should limit the rate of requests to the API to ensure you do not exceed the :ref:`usage limits <api-overview-usage-limits>`.

.. only:: not latex

    |

Handle Errors and Status responses
-----------------------------------
Responses will always use :ref:`HTTP Status Codes <api-overview-http-status-codes>` to indicate the result of the request. Be prepared to handle unexpected errors which may arise from:

- Large or long running requests
- Moved, renamed or deleted resources
- API key permission and account changes
- Usage limits exceeded
- Service temporarily unavailable

.. only:: not latex

    |

Discover Node Ids from the user interface
-----------------------------------------
Node Ids are shown in the associated Node properties dialog. You can also assign your own unique Custom Id to every node for use with the API.

.. only:: not latex

    |

Use Development Tools for testing
----------------------------------
Use development tools such as `cURL <http://curl.haxx.se>`_ or `Postman <http://www.getpostman.com>`_ to test API requests and responses. We recommend `Postman <http://www.getpostman.com>`_ for its simple to use, powerful user interface.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: api_dev_postman.jpg
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: api_dev_postman.jpg

Synchronise data efficiently
----------------------------
When synchronising data to an external system, ensure you only query for data that has changed since your previous request. By specifying a `timeQuery` of `MODIFIED`, only records added or changed within your query range will be returned.

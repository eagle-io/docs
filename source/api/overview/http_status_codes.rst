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
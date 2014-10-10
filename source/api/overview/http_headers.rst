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

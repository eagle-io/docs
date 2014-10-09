.. _api-overview-compression:

HTTP Compression
------------------

Eagle.io supports HTTP compression on both incoming and outgoing requests. Compression is highly recommended where large requests are being submitted.

We use the standard HTTP method of specifying compression encoding, with support for the gzip compression schema.


Incoming compression
~~~~~~~~~~~~~~~~~~~~
In order to send compressed data to eagle.io it is necessary to send it with gzip encoding. 
Compress your data using gzip and add the **Content-Encoding** header to your request::

    Content-Encoding: gzip


Outgoing compression
~~~~~~~~~~~~~~~~~~~~
To receive data from Eagle.io in gzip compressed format simply add the **Accept-Encoding** header to your request::
    
    Accept-Encoding: gzip

Any response exceeding 1024 bytes will be compressed and the **Content-Encoding** header added.
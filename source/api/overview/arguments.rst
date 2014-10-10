Request Arguments
-----------------

Most :ref:`API Resource <api-resources>` requests allow for arguments to be specified as part of the request URL.
While some resources have *required* arguments, most are optional and are used to alter or refine the response.

Arguments are specified using the standard `Query string <http://en.wikipedia.org/wiki/Query_string>`_ format and should be appended to the resource endpoint, prefixed with a '?'.

::

    /api/v1/nodes/?arg1=val1&arg2=val2&arg3=val3...

Certain resource request arguments may contain sub-arguments (denoted by indentation in arguments table). 
Sub-arguments should be included in parentheses with key/value separated by colons and multiple arguments semicolon delimited.

::

    /api/v1/nodes/?arg1=val1(subarg1:subval1;subarg2:subval2...),val2,val3
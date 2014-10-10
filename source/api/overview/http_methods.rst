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

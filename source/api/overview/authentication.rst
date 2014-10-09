.. _api-overview-authentication:

Authentication
--------------

You authenticate to the eagle.io API by providing one of your API keys in the **X-Api-Key** request header::

    GET /api/v1/nodes/
    Host: eagle.io
    X-Api-Key: xxxxxxxxxxxxxxxxxxxxxxxxxxxxx

You can manage your API keys from your :ref:`user preferences <user-preferences>`. You can have multiple API keys active at one time. Your API keys carry many privileges, so be sure to keep them secret.

All API requests must be made over **HTTPS**. Calls made over plain HTTP will fail. You must authenticate for all requests.
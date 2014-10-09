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
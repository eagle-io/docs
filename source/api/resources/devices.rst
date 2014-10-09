.. _api-resources-devices:

Devices
=========

Devices contain details about modems and other communication hardware associated with a Source or Workspace.

.. contents:: Quick Links
    :depth: 1
    :local:

| 

Device Attributes
-----------------
Consumers of Devices should tolerate the addition of new attributes and variance in ordering of attributes with ease. Not all attributes appear in all contexts. It is generally safe to consider a nulled attribute, an empty set, and the absence of an attribute as the same thing.

=================   =========   ===============================================================
Attribute           Type        Description
=================   =========   ===============================================================
**_class**          String      Identifies resource type: *io.eagle.models.device.*\*
**_id**             String      Unique identifier for this device
**config**          Object      Object containing device specific configuration
**createdTime**     String      ISO8601 timestamp the device was created
**datasourceId**    String      Associated Data Source _id
**deviceKey**       String      IMEI or Unique identifier for this device
**isConnected**     Boolean     Flag to indicate if device is currently connected
**lastConnected**   String      ISO8601 timestamp the device last established a connection
**phoneNumber**     String      Phone number associated with the device
**software**        Object      Object containing info about the current device software
**workspaceId**     String      Associated Workspace _id
=================   =========   ===============================================================

| 

List all devices
----------------
List all devices visible to the authenticated user.


Arguments
~~~~~~~~~

=================   =================   ================================================================
Argument            Example             Description
=================   =================   ================================================================
**attr**            _id,slug            *Optional.* 
                                        Comma delimited list of attributes to include in response
=================   =================   ================================================================

Request
~~~~~~~~

::

    GET /api/v1/devices

Response
~~~~~~~~

::
    
    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8


::
    
    [
        {
            "_class": "io.eagle.models.device.Device",
            "_id": "53ce0b6a0eba8dc46900000f",
            "datasourceId": "541a45c1d07ac441473b0fc3",
            "deviceKey": "123456789012347",
            "isConnected": true,
            "lastConnected": null,
            "phoneNumber": "+61400000001",
            "software": {
                "appSentTime": null,
                "appVersion": "0.4.1.20140714155804",
                "bootloaderSentTime": null,
                "bootloaderVersion": "SWI6200T_02.02.04.18BT",
                "branch": "RELEASE",
                "firmwareSentTime": null,
                "firmwareVersion": "FW_753_18.FX8Fx"
            },
            "workspaceId": "536884ecb5a76fd5d3000014"
        },
        {
            "_class": "io.eagle.models.device.ScoutDevice",
            "_id": "541b8d46b94f051649012fae",
            "config": {
                "utcOffset": "+00:00",
                "simPin": "",
                "schedule": {
                    "scheduleType": "SERVER",
                    "statusIntervalSeconds": 600,
                    "dataIntervalSeconds": 3600,
                    "dataIntervalOffsetSeconds": -1
                },
                "logLevel": "INFO",
                "interfaces": {
                    "ETH0": {
                        "gateway": "",
                        "subnet": "",
                        "ipAddress": "",
                        "_class": "io.eagle.models.device.config.EthernetInterface"
                    },
                    "COM1": {
                        "stopBits": 1,
                        "speed": 9600,
                        "rts": false,
                        "parity": "none",
                        "name": "UART1",
                        "dataBits": 8,
                        "cts": false,
                        "_class": "io.eagle.models.device.config.SerialInterface"
                    }
                },
                "gpsEnabled": true,
                "connection": {
                    "retryMax": 3,
                    "retryDelaySeconds": 30,
                    "port": 4331,
                    "host": "device.eagle.io"
                },
                "apn": {
                    "user": "",
                    "pass": "",
                    "host": ""
                }
            },
            "datasourceId": "542500c063c2b8fa6bec342e",
            "deviceKey": "123456789012313",
            "isConnected": false,
            "lastConnected": null,
            "phoneNumber": null,
            "software": {
                "appSentTime": null,
                "appVersion": null,
                "firmwareSentTime": null,
                "firmwareVersion": null,
                "bootloaderSentTime": null,
                "bootloaderVersion": null,
                "branch": "RELEASE"
            },
            "workspaceId": "536884ecb5a76fd5d3000014"
        }
    ]

| 

Get a device
-------------
Get a device by its **_id**.


Arguments
~~~~~~~~~

=================   =================   ================================================================
Argument            Example             Description
=================   =================   ================================================================
**attr**            _id,_class          *Optional.* 
                                        Comma delimited list of attributes to include in response
=================   =================   ================================================================

Request
~~~~~~~

::

    GET /api/v1/devices/:_id

Response
~~~~~~~~

::
    
    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8

::
    
    {
        "_class": "io.eagle.models.device.Device",
        "_id": "53ce0b6a0eba8dc46900000f",
        "datasourceId": "541a45c1d07ac441473b0fc3",
        "deviceKey": "123456789012347",
        "isConnected": true,
        "lastConnected": null,
        "phoneNumber": "+61400000001",
        "software": {
            "appSentTime": null,
            "appVersion": "0.4.1.20140714155804",
            "bootloaderSentTime": null,
            "bootloaderVersion": "SWI6200T_02.02.04.18BT",
            "branch": "RELEASE",
            "firmwareSentTime": null,
            "firmwareVersion": "FW_753_18.FX8Fx"
        },
        "workspaceId": "536884ecb5a76fd5d3000014"
    }



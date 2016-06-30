.. _device-libelium:

Libelium Waspmote
==================
`Libelium <http://www.libelium.com/>`_ **Waspmote - Plug & Sense!** loggers can be configured to send data to `eagle.io <https://eagle.io>`_ in a few easy steps.
Waspmotes can communicate directly or use a Meshlium to connect large sensor networks.

.. only:: not latex

    .. image:: datalogger_libelium.jpg
        :scale: 50 %

.. only:: latex

    .. image:: datalogger_libelium.jpg
        :scale: 40 %

| 

Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-datalogger>` and select *Data logger* as the Source Type. Choose *Libelium* from the list and click Next.

.. only:: not latex

    .. image:: libelium_waspmote_wizard_1.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: libelium_waspmote_wizard_1.jpg

2. Select *Waspmote / Plug & Sense!* as the *Model*. Click Next.

.. only:: not latex

    .. image:: libelium_waspmote_wizard_2.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: libelium_waspmote_wizard_2.jpg

3. Select *TCP Server* as the transport type if the Waspmote will connect directly to eagle.io (alternatively jump to Step 4 for Meshlium connection). A *Waspmote Id* will be automatically generated. Select the timezone of the logger's clock and click Next.

.. only:: not latex

    .. image:: libelium_waspmote_wizard_3.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: libelium_waspmote_wizard_3.jpg

4. Select *Meshlium* if the Waspmote will send data via a Meshlium (alternatively jump to Step 6). Enter the *Meshlium Id* and optional *Auth key* if configured in the eagle.io application on the device. Click Verify.

.. only:: not latex

    .. image:: libelium_waspmote_wizard_4.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: libelium_waspmote_wizard_4.jpg

.. note:: The eagle.io application in the Meshlium device needs to be started and initial connection established with eagle.io before it can be used as a transport.

5. Select the *Waspmote* you would like to acquire data from and click Next.

.. only:: not latex

    .. image:: libelium_waspmote_wizard_5.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: libelium_waspmote_wizard_5.jpg

6. Parameters will be automatically created on initial data acquisition. Click Finish to complete the setup.

.. only:: not latex

    .. image:: libelium_waspmote_wizard_6.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: libelium_waspmote_wizard_6.jpg

.. note:: 
    You can disable/enable parameters from the :ref:`Data Source<node-configuration-datasource-datalogger>` properties dialog after initial creation.

.. only:: not latex

    |

Device settings
---------------
Use the settings below for *Direct Connection* or *Meshlium Connection* with your Waspmote.

.. only:: not latex

    |

Direct Connection
~~~~~~~~~~~~~~~~~~
Refer to our :download:`example Waspmote operating program <./waspmote.pde>` for establishing a direct connection to eagle.io.

Apply the following settings to the variables at the top of the operating program:

waspmoteId
    Use the unique *Waspmote Id* generated during Data Source creation. eg. "8494091048"

host
    "device.eagle.io"

port
    "5566"

.. only:: not latex

    |
    
Meshlium Connection
~~~~~~~~~~~~~~~~~~~
Connect to the web interface on the Meshlium device, open the eagle.io Cloud Connector configuration and *Save* the following settings prior to clicking *Start* to run the application:

Meshlium Name
    Enter a name to help identify this device

Auth Key
    Optional secret key required to create a Data Source that uses this device in eagle.io (or leave blank for none).

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: libelium_waspmote_device_2.jpg
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: libelium_waspmote_device_2.jpg

.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.
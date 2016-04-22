.. _device-campbell-pakbus:

Campbell Scientific
====================
`Eagle.io <https://eagle.io>`_ provides full support for `Campbell Scientific <http://www.campbellsci.com/>`_ PakBus data loggers including the **CR200**, **CR300**, **CR800**, **CR1000**, **CR3000** and **CR6** series.

.. only:: not latex

    .. image:: datalogger_campbell_pakbus.jpg
        :scale: 50 %

.. only:: latex

    .. image:: datalogger_campbell_pakbus.jpg
        :scale: 100 %

This section provides instructions for connecting your PakBus data logger to eagle.io.
Refer to :ref:`Operate and Control <operate-and-control>` for advanced usage instructions.

.. only:: not latex

    |
    
Source configuration
--------------------

1. Create a :ref:`Data Source<node-configuration-datasource-datalogger>` and select *Data logger* as the Source Type. Choose *Campbell Scientific [PakBus]* from the list and click Next.

.. only:: not latex

    .. image:: campbell_pakbus_wizard_1.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: campbell_pakbus_wizard_1.jpg

2. Select the data logger *Model* and *PakBus address* (default is 1). Optionally specify a *PakBus neighbor* and logger *Security code*. Click Next.

.. only:: not latex

    .. image:: campbell_pakbus_wizard_2.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: campbell_pakbus_wizard_2.jpg

3. Select a *Transport type* to use for :ref:`connecting to your logger <node-configuration-datasource-datalogger-connection>`. This example uses the *TCP Client* Transport type to connect directly to a logger accessible via the Internet. Select the *Collection interval* and *Timezone* of the data logger. Refer to :ref:`Data Source configuration <node-configuration-datasource-datalogger>` for a full list of available options.

.. only:: not latex

    .. image:: campbell_pakbus_wizard_3.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: campbell_pakbus_wizard_3.jpg

4. You can choose to *Connect to the data logger now and manually setup parameters* if the logger is online. Alternatively choose the *Automatically setup parameters on initial connection* option and click Next to complete the setup.

.. only:: not latex

    .. image:: campbell_pakbus_wizard_4.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: campbell_pakbus_wizard_4.jpg

5. Table definitions are retrieved from the logger upon successful connection. Select the series from each table that you would like to create as parameters. You can create :ref:`Control <operate-control>` Parameters from any Public table variables. Specify the parameter names (and optionally units) and click Finish to complete the setup. 

.. only:: not latex

    .. image:: campbell_pakbus_wizard_5.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: campbell_pakbus_wizard_5.jpg


.. note:: 
    You can reconfigure the series Parameter assignment from the :ref:`Data Source<node-configuration-datasource-datalogger>` properties dialog after the setup is complete.

.. only:: not latex

    |

Device settings
---------------
Use the Campbell Scientific Device Configuration Utility to configure your data logger for communication with eagle.io.
Refer to your `Campbell Scientific <http://www.campbellsci.com/>`_ PakBus logger manual for connection instructions.

.. only:: not latex

    .. image:: campbell_pakbus_device_1.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: campbell_pakbus_device_1.jpg

The following Server settings should be assigned as a minimum:

PakBus Address
    Use the PakBus address you assigned during Data Source creation. Default is 1.
Security Code
    Use the Security code you assigned during Data Source creation or use 0 for none.

You will also need to modify the TCP/IP settings as required based on your connection method.

.. note:: 
    Use the :ref:`Events <view-events>` view with the detail level set to *Debug* for reviewing communication history and diagnosing configuration issues.
.. meta::
   :description: Manage the configuration for a single Data Source (data logger) or configure network-wide. Configuration support varies between data loggers, including the ability to send programs, firmware and other files to the remote logger(s). Concrete options for the configuration of an environmental data logger

.. _operate-manageconfiguration:

Manage configuration
====================
|icon-configuration| Manage the configuration for a single Data Source (data logger) or perform network-wide configuration updates.
Configuration support varies between data loggers, including the ability to send programs, firmware and other files to the remote logger(s).

Manage configuration operations can only be performed on Data Sources (data logger) and requires *configure* permission. Read more about :ref:`Node types <node-types>`.

.. only:: not latex

    |
    
Manage configuration dialog
----------------------------
The Manage configuration dialog can be opened from the Operate menu. It displays a list of Data Sources within the chosen Node that support managed configuration. Data Sources are grouped together based on data logger type/model. If you do not wish to apply the configuration to a Data Source already displayed in the dialog then you can remove the source by clicking its close 'x' button. 

The current status of the operation is shown for each Data Source being configured and the associated list item will turn green to indicate success or red to indicate failure. If the configuration update fails, check the *Configuration alarm* message for the corresponding Source.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: operate_manageconfiguration_dialog.jpg
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: operate_manageconfiguration_dialog.jpg

Use the *Browse* button to select file(s) to upload. After the files have been selected you must assign a :ref:`configuration option <operate-manageconfiguration-options>` to each file.

Click *Send now* to upload the file(s) and queue the configuration for each Data Source displayed in the immediate list. 

Use the *Cancel pending* button to remove all pending configuration for each Data Source displayed in the immediate list.

New configuration will be applied immediately where possible, otherwise it will be applied during the next communication with the Data Source. 


.. note:: 
    Sending new configuration files will automatically remove any pending configuration from the Data Source.

.. only:: not latex

    |
    
List View pending configuration
-------------------------------
Data Sources with pending configuration will have a configuration icon displayed in the *status* column of the Sources list. You can quickly review any pending configuration files including the assigned *configuration option* and time of upload.

Use the *Send now* button to immediately trigger or retry a configuration update or *Cancel pending* will remove the pending configuration for an individual Source.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: operate_manageconfiguration_panel.jpg
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: operate_manageconfiguration_panel.jpg


.. only:: not latex

    |
    
.. _operate-manageconfiguration-options:

Configuration options
----------------------
Configuration options vary based on data logger type/model. See below for a list of options available for each supported logger type.

.. only:: not latex

    |
    
Campbell PakBus CR200
~~~~~~~~~~~~~~~~~~~~~
Run always
    Send a pre-compiled (.bin) CR200 program to the logger and run the program immediately and on startup.

.. only:: not latex

    |
    
Campbell PakBus CR300/CR800/CR1000/CR3000/CR6
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Run always
    Send a CR300 (.cr300), CR800 (.cr8), CR1000 (.cr1), CR3000 (.cr3) or CR6 (.cr6) program (or pre-compiled .dld file) to the logger and run the program immediately and on startup.

Run always (preserve data)
    Send a program to the logger and run the program immediately and on startup. Data tables will not be reset if possible.

Run once
    Send a program to the logger and run the program immediately but not on startup.

Update firmware
    Send firmware/operating system (.obj) to the logger.

Transfer only
    Send raw files to the logger.


.. raw:: latex

    \newpage

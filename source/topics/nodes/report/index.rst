.. meta::
   :description: Reports have the ability to generate PDFs and schedule for delivery via email

.. _node-configuration-report:

Report
=================
|icon-report| Report nodes generate PDFs and can be scheduled for delivery to subscribed users and groups via email. 
Please refer to the :ref:`Reports <reports>` documentation for a quick start guide on using the reporting feature.

.. note:: 
    The reporting feature is currently a **pre-release** version that is subject to change without notice and is only available to limited accounts. 
    This documentation will also be updated prior to final release to expand on reporting features with examples.
    

.. only:: not latex

    |



Properties
----------
.. include:: ../properties.rstx

.. only:: not latex

    |


Links
~~~~~~
Links assign Nodes in the Workspaces Tree to the report. They will appear under the **Tags** menu in the report editor and can be used to insert content into the report.

Click the *Edit* button to show and modify the configuration for each link. Use the *Add link* button to display the Workspaces Tree and select a new Node to link. Links can be removed via the dropdown menu (accessible by clicking the menu button on the top-right corner of the link item). 

Reports can not have links to Nodes in different Workspace.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: node_report_links.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: node_report_links.jpg

.. only:: not latex

    |


Schedule
~~~~~~~~~
Enable a daily, weekly or monthly schedule for the report to be generated and delivered to subscribed users and groups via email. 

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: node_report_schedule.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: node_report_schedule.jpg

.. only:: not latex

    |


Time
~~~~~
Time allows you to configure the timezone the Source should use for rendering timestamps.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: node_report_time.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: node_report_time.jpg

Timezone
    Select the default timezone the Source should use for rendering timestamps. 

Ignore Daylight Savings Time
    Check this option if the Source should not offset the timestamps to account for DST.

    |


Metadata
~~~~~~~~
Metadata provides a simple key/value data structure that can be used to store static information about the location. Values can be saved as Number or Text and are displayed in the Locations List View.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

    .. image:: node_report_metadata.jpg
        :scale: 50 %

    | 
    
.. only:: latex

    | 

    .. image:: node_report_metadata.jpg


.. only:: not latex

    |


Security
~~~~~~~~~~
.. include:: ../properties_node_security.rstx

| 

Public access
``````````````
.. include:: ../properties_node_public_access.rstx

.. raw:: latex

    \newpage

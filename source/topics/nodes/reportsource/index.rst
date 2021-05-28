.. meta::
   :description: Report Sources have the ability to generate PDF reports and schedule for delivery via email

.. _node-configuration-reportsource:

Report Source
=================
|icon-reportsource| Report Sources generate PDF reports and can be scheduled for delivery to subscribed users and groups via email.

.. note:: 
    The reporting feature is currently a **pre-release** version that is subject to change without notice and is only available to limited accounts. 
    This documentation will also be updated prior to final release to expand on reporting features with examples.
    

.. only:: not latex

    |


Quick start
------------
This documentation is intended as a quick introduction to the reporting feature but will be replaced with comprehensive documentation prior to final release.

Creating a report source
~~~~~~~~~~~~~~~~~~~~~~~~
1. Using the ``Create`` menu in the workspaces tree, select ``Source > Report``. The Report Source will be selected and the report editor will open with a blank report document.
2. Click (or drag) a report element from the editor toolbar to insert it.
3. Drag nodes from the Workspaces tree to quickly insert them into the report template. eg. Drag an image attachment node or chart node to insert as an image in the report.
4. Remove an element by clicking the ``x`` next to the item in the ``Content`` menu or selecting the element(s) in the editor and pressing the ``delete`` key.
5. Insert page break elements to split content over multiple pages.
6. To increase the height of the template page area (for editing only), select the ``Document Properties`` menu and enter a value in the ``Content height`` field. eg. ``1000``.
7. Click on the name of a linked node (automatically added after drag-drop from Workspaces tree) in the ``Tags`` menu to display all of its available attributes.
8. Use :ref:`expressions <expressions>` directly inside report element content to control the output of the content and its formatting. A common scenario is to apply the :ref:`time <liquid-filters-time>` expression filter to format the display of timestamps. eg. ``{{report_time | time}}``
9. Select `Preview` from the editor toolbar to generate a preview of the PDF report using the latest data. 

.. note:: The report editor will automatically save changes made to the template.


**Report editor**

.. only:: not latex

    .. image:: reportsource_editor.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reportsource_editor.jpg

| 

**Report preview**

.. only:: not latex

    .. image:: reportsource_preview.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reportsource_preview.jpg



| 

Downloading or editing a report
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1. Locate the Report Source node in the Workspaces tree or from the `Source` List content view. 
2. To edit an existing report, select ``Edit`` from the context menu.
3. Alternatively select ``Download`` to generate a PDF report using the latest data. 
4. Enable ``Public access`` to get a public URL to a report that will be generated on demand.

| 

Scheduling a report
~~~~~~~~~~~~~~~~~~~~
1. Open the report properties from the Workspaces tree context menu.
2. From the ``Schedule`` section, click the checkbox to enable a schedule and select either `Daily`, `Weekly` or `Monthly`.
3. The report will be generated at the scheduled time (check *debug* level Events).
4. Users must be subscribed to the Report Source node to receive the report at the scheduled time (the same way users and groups are subscribed to receive sms/email notifications). See :ref:`notification subscriptions <subscribe-nodes>` for details.

| 

.. note:: Dashboards currently can not be displayed as images on the report. Historic table data display will be available at a later time. 


Properties
----------
.. include:: ../properties.rstx

.. only:: not latex

    |


Links
~~~~~~
Links assign Nodes in the Workspaces Tree to the report. They will appear under the **Tags** menu in the report editor and can be used to insert content into the report.

Click the *Edit* button to show and modify the configuration for each link. Use the *Add link* button to display the Workspaces Tree and select a new Node to link. Links can be removed via the dropdown menu (accessible by clicking the menu button on the top-right corner of the link item). 

Report Sources can not have links to Nodes in different Workspace.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: reportsource_links.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reportsource_links.jpg

.. only:: not latex

    |


Schedule
~~~~~~~~~
Enable a daily, weekly or monthly schedule for the report to be generated and delivered to subscribed users and groups via email. 

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: reportsource_schedule.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reportsource_schedule.jpg

.. only:: not latex

    |


Time
~~~~~
Time allows you to configure the timezone the Source should use for rendering timestamps.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: reportsource_time.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: reportsource_time.jpg

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

    .. image:: reportsource_metadata.jpg
        :scale: 50 %

    | 
    
.. only:: latex

    | 

    .. image:: reportsource_metadata.jpg


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

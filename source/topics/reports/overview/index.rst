.. meta::
   :description: Reports have the ability to generate PDFs and schedule for delivery via email

.. _reports-overview:

Quick start
==============
This documentation is intended as a quick introduction to the reporting feature. 
Please refer to the :ref:`using the report editor <reports-editor>` section for a comprehesive guide to building reports.


Creating a report
------------------
1. Using the ``Create`` menu in the workspaces tree, select ``Report``. The :ref:`report node <node-configuration-report>` will be created and the report editor will open with a blank report template.
2. Click (or drag) a report element from the editor toolbar to insert it.
3. Drag nodes from the Workspaces tree to quickly insert them into the report template. eg. Drag an image attachment node or chart node to insert as an image in the report.
4. Remove an element by clicking the ``x`` next to the item in the ``CONTENT`` menu (on the right-hand side of the screen) or selecting the element(s) in the editor and pressing the ``delete`` key.
5. Insert page break elements to split content over multiple pages.
6. To increase the height of the template page area (for editing only), select the ``DOCUMENT PROPERTIES`` menu and enter a value in the ``Content height`` field. eg. ``1000``.
7. Click on the name of a linked node (automatically added after drag-drop from Workspaces tree) in the ``TAGS`` menu to display all of its available attributes.
8. Use :ref:`expressions <expressions>` directly inside report element content to control the output of the content and its formatting. A common scenario is to apply the :ref:`time <liquid-filters-time>` expression filter to format the display of timestamps. 
   eg. ``{{report_time | time}}`` or ``{{report_time | time: "DD MMMM YYYY"}}``
9. Select `Preview` from the editor toolbar to generate a preview of the PDF report using the latest data. 

.. note:: The report editor will automatically save changes made to the template.


**Report editor**

.. only:: not latex

    .. image:: report_editor.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: report_editor.jpg

| 

**Report preview**

.. only:: not latex

    .. image:: report_preview.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: report_preview.jpg



| 


Downloading and Scheduling
----------------------------
1. Locate the Report node in the Workspaces tree or from the `Reports` List content view. 
2. To edit an existing report, select ``Edit`` from the context menu.
3. Alternatively select ``Download`` to generate a PDF report using the latest data. 
4. Enable ``Public access`` to get a public URL to a report that will be generated on demand.
5. Use the :ref:`HTTP API <api-nodes-report>` to generate a PDF report on demand.

| 

**To schedule a report**

1. Open the :ref:`report properties <node-configuration-report>` from the Workspaces tree context menu.
2. From the ``Schedule`` section, click the checkbox to enable a schedule and select either ``Daily``, ``Weekly`` or ``Monthly``.
3. The report will be generated at the scheduled time (check *debug* level Events).
4. Users must be subscribed to the :ref:`report node <node-configuration-report>` to receive the report at the scheduled time (the same way users and groups are subscribed to receive sms/email notifications). See :ref:`notification subscriptions <subscribe-nodes>` for details.
5. Use the :ref:`Events <view-events>` view with ``debug`` detail level to audit when scheduled reports are generated and sent to subscribed users.

*Report properties - schedule*

.. only:: not latex

    .. image:: report_schedule.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: report_schedule.jpg



| 

.. note:: Dashboards currently can not be displayed as images on the report. Historic table data display will be available at a later time. 

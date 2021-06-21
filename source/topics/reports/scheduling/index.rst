.. meta::
   :description: Reports have the ability to generate PDFs and schedule for delivery via email


.. _reports-scheduling:

Scheduling
===========

Reports can be downloaded on-demand from the :ref:`List view <view-list>`, 
via the :ref:`Public access <node-configuration-report-publicaccess>` feature or using the :ref:`HTTP API <api-nodes-report>`.

Reports can also be scheduled for **automatic delivery** to subscribed users and groups via email.


.. only:: not latex

    .. image:: reports_properties_scheduling.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_properties_scheduling.jpg


To schedule a report, open the :ref:`report properties <node-configuration-report>` from the Workspaces tree context menu and select the ``Schedule`` tab.

Enable a schedule by checking the ``Scheduled`` checkbox and select either ``Daily``, ``Weekly`` or ``Monthly``. 
Set the schedule required (maximum once per day) and **Save**.

Users and groups must be :ref:`subscribed <subscribe-nodes>` to the :ref:`report node <node-configuration-report>` to receive the report at the scheduled time. 

Use the :ref:`Events <view-events>` view with ``debug`` detail level to audit when scheduled reports are generated and sent to subscribed users.

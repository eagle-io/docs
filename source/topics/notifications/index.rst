.. _notifications:

Notifications
==================

|icon-notification| Notifications are used to inform users and groups of an :ref:`alarm <alarms>` or other condition via Email and SMS. 
Users can personally subscribe to specific Nodes and specify their :ref:`notification preferences <user-notification-preferences>` or you can :ref:`manage notifications <notifications-manage>` on behalf of a user or group if you have *manage notifications* security permission.

.. only:: not latex

    |

There are 3 steps to configuring notifications: 

1. :ref:`Configure the Node <nodes-and-configuration>` and set the Notification option and Category for an Alarm type or State.
2. Configure your user profile :ref:`notification preferences <user-notification-preferences>`.
3. :ref:`Subscribe to the Nodes <subscribe-nodes>` you would like to receive notifications for. Alternatively use the :ref:`manage notifications <notifications-manage>` dialog to subscribe other users/groups.

Account administrators can also define custom :ref:`notification limits and categories <management-notifications>`.

.. only:: not latex

    |

.. _subscribe-nodes:

Subscribe to Nodes
------------------
|icon-subscribe| Subscribe to and Unsubscribe from Nodes via the Workspace Menu and View's context menus, List View toolbar or from the subscribe icon shown in the List View rows. 

When changing subscription options from the toolbar or context menu the checked or chosen Nodes including all contained Nodes will have the new subscription options applied.

Click or touch the subscribe icon in the List View to toggle your subscription to the corresponding Node(s). If the Node contains other Nodes (ie. Location Node contains Source Node), the Notification Subscription Panel will be displayed to allow you to select which types of Nodes you would like to subscribe to or unsubscribe from. A partially colored subscription icon indicates that not all child Nodes have been subscribed to.

*Notification Subscription Panel accessible from List View*

.. only:: not latex

    .. image:: notification_panel.jpg
        :scale: 50 %

    | 
        
.. only:: latex

    .. image:: notification_panel.jpg
        :scale: 40 %
        
You may notice a *Lock* symbol next to the subscribe icon(s) if you do not have *subscribe notifications* permission or are included in a :ref:`group <management-security-groups>` that has been subscribed to receive notifications. 
These locked notifications can only be unsubscribed via the :ref:`manage notifications <notifications-manage>` dialog. However you can manage your personal :ref:`notification preferences <user-notification-preferences>` or :ref:`remove yourself from a group <user-preferences-groups>` via the user preferences dialog.

.. note::
    Users require *subscribe notifications* permission to subscribe/unsubscribe to Nodes themselves. Refer to security :ref:`roles <management-security-userroles>` for more details.


.. only:: not latex

    |


.. _notifications-manage:

Manage notifications
---------------------
You can manage notification subscriptions on behalf of a user or group via the *manage notifications* dialog, accessible from the Workspace context menu. 
Select the user or group from the dropdown menu and :ref:`subscribe <subscribe-nodes>` them to nodes. The dropdown menu only includes users and groups that have access to the Workspace.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: manage_notifications.jpg
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: manage_notifications.jpg


.. note::
    Users require *manage notifications* permission to subscribe other users and groups to Nodes. Refer to security :ref:`roles <management-security-userroles>` for more details.


.. raw:: latex

    \newpage

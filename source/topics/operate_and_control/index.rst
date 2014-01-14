.. _operate-and-control:

Operate and Control
====================
|icon-operate| The Operate menu, available from the Node and Content context menus or List View toolbar provides access to the Acquire and Control operations.


Acquire
-------
|icon-datasource-acquire| Acquire performs a one-time collection on the Source(s) chosen. View the current operation status from the Source List View. Requires *operate* permission.

When acquiring from a Source that uses a *Scout modem* you may be prompted to confirm the remote connection.
This occurs when the Source Schedule is *Disabled* or set to *Remote* (ie. device not permanently connected). An SMS will be sent to the *Scout modem* to initiate a callback. The account owner will be charged for the SMS at the standard SMS Notification rate applicable to their account type. Read more about :ref:`Scout configuration <device-scout>`.

*Scout modem remote connection confirmation*

.. only:: not latex

	.. image:: operate_acquire_callback.png
		:scale: 50 %

	| 

.. only:: latex

	.. image:: operate_acquire_callback.png


.. _control:

Control
-------
|icon-control| Control allows you to update or set values in a remote data logger. Control operations can only be performed on Control Parameters and requires *operate* permission. Read more about :ref:`Node types <node-types>`.

The control operation will be attempted immedietly upon applying or setting the control value. If a connection to the Source can not be established, the control value will be applied on the next successful connection. Any pending control values are indicated with an arrow.

Control Parameters store the history of the control values set by the user, not the value of the parameter in the data logger.

Control dialog
~~~~~~~~~~~~~~
The Control dialog can be opened from the Operate menu. It displays a list of Control Parameters within the chosen Node.
Set the control values and *Apply*. Cancel a pending control operation by clicking the 'x' next to the parameter control value. The current status of the operation is shown for each parameter being updated and the rows will turn green to indicate success or red to indicate failure.

.. only:: not latex

	.. image:: operate_control_dialog.png
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: operate_control_dialog.png


List View inline Control
~~~~~~~~~~~~~~~~~~~~~~~~
Control parameters can have their control value set directly from the Parameters List View. Click or touch the control icon next to the value to update or set the control value. Click or touch the control icon again to apply the new value or cancel the control operation by clicking the 'x'.

.. only:: not latex

	.. image:: operate_control_inline.png
		:scale: 50 %

	| 

.. only:: latex

	| 

	.. image:: operate_control_inline.png


.. note:: 
	Control Parameters can be configured to restrict the user input for the control value. See :ref:`Configuring Parameters <node-configuration-parameter>` for full details.

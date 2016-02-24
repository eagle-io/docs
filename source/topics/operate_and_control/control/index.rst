.. _operate-control:

Control
=======
|icon-control| Control allows you to update or set values in a remote data logger. Control operations can only be performed on Control Parameters and requires *operate* permission. Read more about :ref:`Node types <node-types>`.

The control operation will be attempted immedietly upon applying or setting the control value. If a connection to the Source can not be established, the control value will be applied on the next successful connection. Any pending control values are indicated with an arrow.

Control Parameters store the history of the control values set by the user, not the value of the parameter in the data logger.

.. only:: not latex

    |
    
Control dialog
--------------
The Control dialog can be opened from the Operate menu. It displays a list of Control Parameters within the chosen Node.
Set the control values and *Apply*. Cancel a pending control operation by clicking the 'x' next to the parameter control value. The current status of the operation is shown for each parameter being updated and the rows will turn green to indicate success or red to indicate failure.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: operate_control_dialog.png
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: operate_control_dialog.png

.. only:: not latex

    |
    
List View inline Control
------------------------
Control parameters can have their control value set directly from the Parameters List View. Click or touch the control icon next to the value to update or set the control value. Click or touch the control icon again to apply the new value or cancel the control operation by clicking the 'x'.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: operate_control_inline.png
        :scale: 50 %

    | 

.. only:: latex

    | 

    .. image:: operate_control_inline.png


.. note:: 
    Control Parameters can be configured to restrict the user input for the control value. See :ref:`Configuring Parameters <node-configuration-parameter>` for full details.

.. raw:: latex

    \newpage

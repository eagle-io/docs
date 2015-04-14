General
=======
|icon-backend| General section allows you to configure the following:


Changing or Cancelling the Account
----------------------------------
The Overview section displays the current *Account Type*. 

Click or touch the *Change* button to Change or Cancel the account. Follow the on-screen instructions to proceed.

.. note:: 
	You must be logged in as the Account Owner to change or cancel the account.


.. _management-general-qualitycodes:

Quality Codes
-------------
The Quality Codes section displays a list of the historic :ref:`Qualities <historic-quality>` for this Account. Quality Code settings apply to all Workspaces in the account. Use the *Add* button to create custom quality codes.

Source and Quality Codes must be whole numbers between 0 - 65535.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: account_quality.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: account_quality.jpg
		:scale: 80 %

Source Quality
	Quality Code(s) to match on acquired data. Separate multiple quality codes with a comma.

Quality Code
	Quality Code to apply to the data for display and export. You can use the same Code as the Source or specify a custom code. Must be numeric.

Refer to the :ref:`Quality reference <historic-quality>` for further details.

.. note::
	System qualities can not be removed, but can be updated with new Quality Codes.

.. raw:: latex

    \newpage

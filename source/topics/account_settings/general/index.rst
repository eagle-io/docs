General
=======

|icon-backend| General section provides an overview of the account and allows you to change your contact details and setup quality code information.

.. only:: not latex

    |


Overview
--------

The account owner or manager can change the account name or view a summary of current usage and billing charges for non-managed accounts.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: account_general_overview.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: account_general_overview.jpg


.. note:: 
	Only the account owner or manager can change the account name or close the account.

.. only:: not latex

    |


Contact
--------

Please ensure your contact details are always up to date so that we can contact you when required. You can optionally specifiy a different support phone number and email address for any public enquires or customer support requests.

**Phone** number should follow the standard `international format`_ starting with '+' and including country and area code.

**Email** address is used for all account related correspondance with eagle.io. You should use your company admin email rather than your personal email address. eg. *admin@company.com*

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: account_general_contact.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: account_general_contact.jpg


.. _international format: http://en.wikipedia.org/wiki/National_conventions_for_writing_telephone_numbers

.. only:: not latex

    |


.. _management-general-qualitycodes:

Quality Codes
-------------

The Quality Codes section displays a list of the historic :ref:`Qualities <historic-quality>` for this Account. Quality Code settings apply to all Workspaces in the account. Use the *Add* button to create custom quality codes.

Source and Quality Codes must be whole numbers between 0 - 65535.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: account_general_quality.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: account_general_quality.jpg

Exclude quality
    You can optionally choose to exclude *Bad* and *Uncertain* quality coded data from all historic data requests. 
    Excluded data points will not be visible on Charts, Tabular data and Historic API requests.

Source quality
	Quality code(s) to match on acquired data. Separate multiple quality codes with a comma.

Quality code
	Quality code to apply to the data for display and export. You can use the same Code as the Source or specify a custom code. Must be numeric.

Refer to the :ref:`Quality reference <historic-quality>` for further details.

.. note::
	System qualities can not be removed, but can be updated with new Quality Codes.

.. raw:: latex

    \newpage

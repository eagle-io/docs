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

Backup
------
The Backup section allows you to configure your own off-site data backups.

*Historic data* is currently the only item available for backup. When enabled, any new data acquired or collected (on schedule) from a Data Source is immediately sent to the Transport for backup. 

The backup files contain all data that has been collected from the Data Source, including data/tables that dont have associated Parameters configured in Eagle.io. The data is stored in a standard Delimited Text format and new data is automatically appended to the same file(s).

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: account_backup.png
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: account_backup.png
		:scale: 80 %

Transport
	Select the transport to use for the backup. FTP Client is currently the only supported backup transport.

FTP host
	Host name or IP address of the FTP Server.

Remote path
	Specifiy the remote path on the FTP Server where the backup files will be created. A *backup* folder will be created within the specified directory. You must have *Read* and *Write* permissions for the remote path.

User
	Specifiy the name of the user account for the system to use when connecting to the FTP Server. Enter *anonymous* if no user account is required.

Password
	Password for the associated user account (or leave blank for none).

.. note::
	Your data and configuration is automatically backed on the Eagle.io Network. You only need to enable backups if you would like to keep an off-site copy of the data.

.. raw:: latex

    \newpage

Quality Codes
-------------
The Quality Codes section displays a list of the historic :ref:`Qualities <historic-quality>` for this Account. Quality Code settings apply to all Workspaces in the account. Use the *Add* button to create custom quality codes.

Source and Quality Codes must be whole numbers between 0 - 65535.

.. raw:: latex

    \vspace{-10pt}
    
.. only:: not latex

	.. image:: account_quality.png
		:scale: 50 %

	| 

.. only:: latex
	
	| 

	.. image:: account_quality.png
		:scale: 80 %

Source Quality
	Quality Code(s) to match on acquired data. Seperate multiple quality codes with a comma.

Quality Code
	Quality Code to apply to the data for display and export. You can use the same Code as the Source or specify a custom code. Must be numeric.

Refer to the :ref:`Quality reference <historic-quality>` for further details.

.. note::
	System qualities can not be removed, but can be updated with new Quality Codes.

.. raw:: latex

    \newpage

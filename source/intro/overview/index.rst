.. meta::
   :description: A guided overview to get you set up and started. Start monitoring environmental data in minutes. Connect, configure and control your monitoring fleet from the cloud. Set up a beautiful, powerful, IoT mediated remote environmental monitoring system.

Introducing `eagle.io <https://eagle.io>`_
===========================================

.. _overview:

Connect, configure and control your monitoring fleet from the cloud
--------------------------------------------------------------------

.. image:: network.jpg

Introducing `eagle.io <https://eagle.io>`_, the secure, reliable, easy to use cloud-based data monitoring service.
Whether you're working with simple data files or managing a fleet of :term:`data loggers <data logger>`, eagle.io has you covered.

With real-time communications, collaboration and instant updates built into the core eagle.io has everything you've always wanted and more.
The lightning fast interface has been designed to work across all modern phones and computing devices with no software to install and no page reloads.

.. only:: not latex

    |

Log in to eagle.io
------------------
You will need a user profile to log in. This requires you to `sign up <https://eagle.io/trial>`_ for an account or receive a :ref:`Workspace Sharing <sharing-and-security>` invitation from a registered user.

*Login form*

.. only:: not latex

	.. image:: public_login.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: public_login.jpg
		:scale: 40 %

Enter your *email* address & *password* to login. If you have forgotten your password, simply click the *forgot password* link to reset it.

.. only:: not latex

    |

Layout and Navigation
---------------------
The user interface is divided into sections which group similar functionality and content.
The layout of these sections will vary depending on the screen size of your device including its orientation (portrait or landscape). The figures below highlight the Main features of the interface as displayed on different devices.

.. raw:: latex

    \newpage

*Desktop layout*

.. only:: not latex

    .. image:: ui_layout_desktop.png
        :scale: 50 %

    | 

.. only:: latex
 
   .. image:: ui_layout_desktop.jpg

*Phone and Tablet layout*

.. only:: not latex
 
    .. image:: ui_layout_phone.png
        :scale: 50 %

    | 

.. only:: latex

    .. image:: ui_layout_phone.jpg
        :scale: 70 %


*Main features*

1. Create Menu
2. Filters
3. Status Bar
4. User Menu, Messages, Help and Fullscreen mode
5. View Selector
6. Toolbar
7. Content Area
8. Workspaces Tree
9. Workspaces Tree show/hide button

.. only:: not latex

    |

Selecting Nodes in the Workspaces Tree
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The Workspaces Tree displays all the Workspaces and associated content you have access to. Each item in this menu is called a Node. The highlighted item is referred to as the Selected Node.

Most Nodes are hierarchical and may also contain Nodes themselves. The *Workspaces* label is the best example of this as its referred to as the Base Node and contains all the Workspace Nodes.

If you have access to more than one Workspace you may notice some of the Workspaces are *GRAYED* out when you first login. Select the Workspace to load its assets.

*Example Workspaces Tree showing hierarchy*

.. only:: not latex

	.. image:: workspaces_tree.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: workspaces_tree.jpg
		:scale: 40 %


Change the Selected Node by clicking or touching on another Node. You will notice that container Nodes will automatically expand and collapse to show and hide their contained Nodes on selection.

Selecting a Node focuses your View. Only the selected Node and the Nodes it contains will be available in the Content Area.

You can easily show all content by selecting the Base Node.

.. note::
	The Workspaces Tree will be hidden by default when displayed on small screens. You can see the Selected Node displayed in the Status Bar. Double-click or Double-tap the status bar to quickly reveal the Workspaces Tree. Alternatively you can use the Workspaces Tree show/hide button.

*Most common types of Nodes:*

|icon-workspace| Workspace
	Workspaces are special container Nodes that can be shared with other users. All other Nodes are created within the Workspace. Workspaces can only be created by the Account Owner or Administrators.

|icon-folder| Folder
	Folders *(previously Groups)* are simple nodes that provide structure to your Workspaces. You may choose to group related content into folders by geography or related purpose. Folders can be created inside Workspaces, Locations and other Folders.

|icon-location| Location
	Locations are special containers used to associate data with a geographical location.
	Locations can be created inside Workspaces and Groups.

|icon-chart| Chart
	Create various types of charts with customized functionality and appearance including historic charts with multiple y-axes and wind rose charts with configurable ranges.

|icon-dash| Dashboard
	Dashboards allow users to create customized views of their data in visually appealing layouts using animated gauges, charts, lists, maps and other graphical controls.

|icon-datasource| Data Source
	Data Sources automatically acquire or receive timeseries data using a variety of different transport options. Connect to a :term:`data logger` or collect data from files. Data Sources can be created inside Locations only.

|icon-point-number-range| Parameter
	Parameters are managed by and contained within Data Sources. Parameters store the individual timeseries acquired by its Data Source. 
	There are a few different types of parameters but essentially they support Monitoring or Controlling of values.

Review the full list of :ref:`Node types <node-types>`.

.. only:: not latex

    |

Changing the View
~~~~~~~~~~~~~~~~~~
The Selected Node (including any Nodes it contains) can be displayed in a variety of Views.
Use the View Selector to change the View. You will notice the Content Area and Toolbar change.

*Content Views*

|icon-map| Map
	Map provides a fully featured interactive interface for displaying location based data.

|icon-list| List
	Intuitive categorised lists provide quick access to the data for your most important Nodes: Locations, Sources, Parameters, Attachments.

|icon-chart| Chart
	Use the Chart View for reviewing your timeseries data in highly interactive charts. Choose to group data on charts by Location or Parameter type. You can also setup custom charts for full customization over functionality and appearance.

|icon-events| Events
	Every interaction (user and system generated) is recorded in the Events log. 
	Use the Events View to quickly audit the system, a user or history of alarms.

|icon-dash| Dash 
	The Dash is for viewing the customized graphical dashboards and also provides an overview of all dashboard nodes available based on the Selected Node in the Workspaces Tree. 


.. only:: not latex

    |

User Menu
~~~~~~~~~
The User Menu provides quick access to the User Profile, Account Settings, Log out and Help.

.. only:: not latex

    |
    
Context Menus
~~~~~~~~~~~~~
Context menus are built into the interface and provide quick access to navigation, operations and configuration for their associated elements. Right-click or long-press on a Node in the Workspaces Tree or an item in the Content Area (ie. Map marker, List item, etc.) to display it's associated context menu.

*Example Context menu shown for Map marker*

.. image:: context_menu.jpg
	:scale: 50 %

.. only:: not latex

	| 

.. note:: 
	Context menus display only the items relevant to the associated Node or content the menu is displayed for. Context menu items are also dependant on User permissions. If there are no available options then no context menu will be displayed.


.. only:: not latex

    |

Click, Touch, Tap, What?
~~~~~~~~~~~~~~~~~~~~~~~~
The user interface has been designed to work seemlessly across all modern computing devices including desktop computers, tablets and phones which means it has built-in support for Touch devices.

*Throughout this documentation you will notice the following terms:*

Click, Touch, Tap
	Use a mouse to select an item or touch the screen (touch device only) momentarily where the item is displayed.

Double-click, Double-tap
	Click the item twice in quick succession with a mouse, or Tap the item twice with a touch device.

Right-click, Long-press
	Using a dual button mouse, use the alternate button to Click. When using a single button mouse or touch device you need to click (or touch) and hold without releasing for a few seconds.

.. only:: not latex

    |

Inline help
-----------
|icon-help| Help is available throughout the interface - wherever you see the help icon.
You can hover, click or touch the help icon to show the help popup - many of which have quick links back to the relevant section in this documentation.

*Inline help example*

.. only:: not latex

	.. image:: inline_help.jpg
		:scale: 50 %

	| 

.. only:: latex
	
	.. image:: inline_help.jpg
		:scale: 35 %

.. only:: not latex

    |

Offline use
-----------
An internet connection is required. If the connection to eagle.io has failed a disconnected notice will be displayed. Normal operation will resume once the connection has been re-established. 

.. only:: not latex

	.. image:: disconnected_notice.jpg
		:scale: 50 %

	| 

.. only:: latex

	.. image:: disconnected_notice.jpg
		:scale: 40 %

.. note:: 
	You may notice the app refresh after the connection is re-established after a long timeout or when updates have been released.

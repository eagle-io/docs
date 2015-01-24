.. _timezone:

Timezones
=========

Timezones allow for data to be collected from various geographical locations and stored on the server in :term:`UTC`.
Refer to the Source configuration docs for information on assigning a timezone.

Users can assign a timezone to their User profile. All data displayed to the user including current, historic, notifications and events will be displayed in the selected timezone.

Example::
	
	(GMT-08:00) Pacific Time

| 

The :ref:`HTTP API <api>` requires all timezones to be specified using the *TZ* naming convention as specified in `this list <http://en.wikipedia.org/wiki/List_of_tz_database_time_zones>`_. *Etc/UTC* should be used for UTC.

Example::

    America/Los_Angeles

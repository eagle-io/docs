.. _relative-time:

Relative Time
=============

OPC Relative Time is used to represent date and time in an easy to ready format that allows users to navigate or select a period of time without explicitly specifying a date. An example use is NOW-5M which simply translates to the current time minus 5 minutes. All times are relative to the user profile timezone. A duration is specified with both a base time and interval.

OPC Relative Time syntax::

	<basetime> [ ( + ¦ - ) <interval> ]


:Base Time: A time that is relative to ‘now’, the present time. You can enter a base time in either short or long format.

:Interval: An optional further offset that you can either add or subtract from the base time. You specify this offset in the OPC Time Format.


Example usage::

	H (start of the current hour)
	D+9H  (9am current day)
	NOW-7D+7D  (duration covers last 7 days)


OPC Base Time and Interval Keywords
-----------------------------------

+----------------------+---------------------------------+-----------------------------+
| Keyword Long (short) |            Base Time            |           Interval          |
+======================+=================================+=============================+
| NOW                  | The current time                | N/A                         |
+----------------------+---------------------------------+-----------------------------+
| SECOND (S)           | The start of the current second | Offset from time in seconds |
+----------------------+---------------------------------+-----------------------------+
| MINUTE (M)           | The start of the current minute | Offset from time in minutes |
+----------------------+---------------------------------+-----------------------------+
| HOUR (H)             | The start of the current hour   | Offset from time in hours   |
+----------------------+---------------------------------+-----------------------------+
| DAY (D)              | The start of the current day    | Offset from time in days    |
+----------------------+---------------------------------+-----------------------------+
| WEEK (W)             | The start of the current week   | Offset from time in weeks   |
+----------------------+---------------------------------+-----------------------------+
| MONTH (MO)           | The start of the current month  | Offset from time in months  |
+----------------------+---------------------------------+-----------------------------+
| YEAR (Y)             | The start of the current year   | Offset from time in years   |
+----------------------+---------------------------------+-----------------------------+

.. only:: latex

	| 

.. note:: 
	You can specify both the <basetime> and <interval> in either short or long format.
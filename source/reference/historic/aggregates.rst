Aggregates
==========

Historic Data Aggregates provide a method to resample raw data over a specified period into Intervals and then perform a calculation on the data in each interval. 

Advantages of aggregation:
	- Reduces the size of the dataset. Charts and tabular data can be loaded faster
	- Easy generation of advanced statistical reports and charts. eg. Daily totals.

The following aggregates are available depending on the Display Type setting of the parameter.

+--------------+-------+-------+
|  Aggregate   | VALUE | STATE |
+==============+=======+=======+
| RAW          | x     | x     |
+--------------+-------+-------+
| INTERPOLATED | x     |       |
+--------------+-------+-------+
| AVERAGE      | x     |       |
+--------------+-------+-------+
| TOTAL        | x     |       |
+--------------+-------+-------+
| MINIMUM      | x     |       |
+--------------+-------+-------+
| MAXIMUM      | x     |       |
+--------------+-------+-------+
| RANGE        | x     |       |
+--------------+-------+-------+
| START        | x     | x     |
+--------------+-------+-------+
| END          | x     | x     |
+--------------+-------+-------+
| COUNT        | x     | x     |
+--------------+-------+-------+
| DELTA        | x     |       |
+--------------+-------+-------+


RAW
---
No Aggregate calculation is applied. Raw data (as collected by the Source) is returned.


INTERPOLATED
------------
The Interpolated algorithm calculates a value that is:

	- Equal to or higher than the last raw historic value before the start of the sample. For the purposes of this section, we will refer to the last raw historic value before the start of the sample as the ‘last pre-sample’ historic value. 
	- Equal to or lower than the next raw historic value after the ‘last pre-sample’ historic value. The ‘next’ value may be in the sample or could be after the sample. If there is no ‘next’ raw historic value, the interpolated value will be exactly the same as the ‘last pre-sample’ value.


AVERAGE
-------
The average aggregate adds up the values of all good raw data for each interval, and divides the sum by the number of good values producing a mean average.


TOTAL
-----
The total aggregate adds up all the values of all good raw values for each interval.


MINIMUM
-------
The minimum aggregate retrieves the minimum good raw value within the interval.


MAXIMUM
-------
The maximum aggregate retrieves the maximum good raw value within the interval.


RANGE
-----
The range aggregate finds the difference between the raw maximum and raw minimum values in the interval. If only one value exists in the interval, the range is zero. Note that the range is always zero or positive.


START
-----
The start aggregate retrieves the first raw value within the interval.


END
---
The end aggregate retrieves the last raw value within the interval.

COUNT
-----
This aggregate retrieves a count of all the raw values within an interval. If one or more raw values are non-good, they are not included in the count.

DELTA
-----
The delta aggregate retrieves the difference between the earliest and latest good raw values in an interval. If the last value is less than the first value, the result will be negative. If the last value is the same as the first value, or if the last value is also the first value at the same timestamp, the result will be zero. If the last value is greater than the first value, the result will be positive.



.. note:: Aggregates follow the OPC UA Historical Access 1.0 specification
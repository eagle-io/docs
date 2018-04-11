.. _historic-aggregates:

Aggregates
==========

Historic Data Aggregates provide a method to resample raw data over a specified period into Intervals and then perform a calculation on the data in each interval. 

Advantages of aggregation:
	- Reduces the size of the dataset. Charts and tabular data can be loaded faster
	- Easy generation of advanced statistical reports and charts. eg. Daily totals

The following aggregates are available depending on the :ref:`Display type <node-configuration-parameter-general>` setting of the Parameter:

+--------------+-------+-------+
|  Aggregate   | VALUE | STATE |
+==============+=======+=======+
| NONE (raw)   | x     | x     |
+--------------+-------+-------+
| INTERPOLATED | x     |       |
+--------------+-------+-------+
| AVERAGE      | x     |       |
+--------------+-------+-------+
| MEDIAN       | x     |       |
+--------------+-------+-------+
| TOTAL        | x     |       |
+--------------+-------+-------+
| MINIMUM      | x     |       |
+--------------+-------+-------+
| MAXIMUM      | x     |       |
+--------------+-------+-------+
| RANGE        | x     |       |
+--------------+-------+-------+
| DELTA        | x     |       |
+--------------+-------+-------+
| CHANGE       | x     | x     |
+--------------+-------+-------+
| START        | x     | x     |
+--------------+-------+-------+
| END          | x     | x     |
+--------------+-------+-------+
| COUNT        | x     | x     |
+--------------+-------+-------+


.. note::
    Text and Time Parameters only support *State* aggregates.

.. only:: not latex

    |

RAW
---
No Aggregation is applied. Raw data (as collected by the Source) is returned.

.. only:: not latex

    |

INTERPOLATED
------------

The Interpolated aggregate either finds or calculates a value at each interval boundary. For each interval boundary timestamp, if there is already good raw data at that timestamp, then the raw data is used. Otherwise, the two closest bounding values must be found, one each in the intervals before and after the boundary. The value at the boundary is then interpolated between these two bounding values. In either case, the raw values involved must be good values to be used. If no good value can be found in the previous or next interval, then the aggregate will have a quality of *No Data*. If any non-good values are skipped in order to find the closest good bounding values, the aggregate quality will be *Data Subnormal*.


.. only:: not latex

    |

AVERAGE
-------
The average aggregate adds up the values of all good raw data for each interval, and divides the sum by the number of good values producing a mean average. If any non-good values are ignored in the computation, the aggregate quality will be *Data Subnormal*.

.. only:: not latex

    |

MEDIAN
------
The median aggregate sorts the good values for each interval and selects the middle value as the median. If any non-good values are ignored in the computation, the aggregate quality will be *Data Subnormal*.

.. only:: not latex

    |

TOTAL
-----
The total aggregate adds up all the values of all good raw values for each interval. If any non-good values are ignored in the computation, the aggregate quality will be *Data Subnormal*.

.. only:: not latex

    |

MINIMUM
-------
The minimum aggregate retrieves the minimum good raw value within the interval.

.. only:: not latex

    |

MAXIMUM
-------
The maximum aggregate retrieves the maximum good raw value within the interval.

.. only:: not latex

    |

RANGE
-----
The range aggregate finds the difference between the raw maximum and raw minimum values in the interval. If only one value exists in the interval, the range is zero. Note that the range is always zero or positive.

.. only:: not latex

    |

DELTA
-----
The delta aggregate retrieves the difference between the earliest and latest good raw values in an interval. If the last value is less than the first value, the result will be negative. If the last value is the same as the first value, or if the last value is also the first value at the same timestamp, the result will be zero. If the last value is greater than the first value, the result will be positive. If any non-good values exist earlier or later than the earliest and latest good values, respectively, the aggregate quality is *Data Subnormal*.

.. only:: not latex

    |

CHANGE
------
The change aggregate retrieves raw values which have been filtered to remove any duplicate sequential values.

.. only:: not latex

    |

START
-----
The start aggregate retrieves the first raw value within the interval. If the value is non-good, than the quality of the aggregate will be *Data Subnormal*.

.. only:: not latex

    |

END
---
The end aggregate retrieves the last raw value within the interval. If the value is non-good, than the quality of the aggregate will be *Data Subnormal*.

.. only:: not latex

    |

COUNT
-----
This aggregate retrieves a count of all the raw values within an interval. If one or more raw values are non-good, they are not included in the count and the aggregate quality will be *Data Subnormal*.

.. only:: not latex

    |

.. note:: Aggregates use the OPC-UA Historical Access v1.0 Specification

.. raw:: latex

    \newpage
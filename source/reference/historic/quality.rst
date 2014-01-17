.. _historic-quality:

Quality
=======

Historic data can optionally contain quality information. Each data point in the time series can store a quality code that represents the quality of the value captured. System quality codes may also be applied automatically when displaying or exporting the historic data (usually when aggregate calculations are applied).

The account management :ref:`Quality Codes <management-general-qualitycodes>` section allows Account Owners and Administrators to add custom quality codes or modify the built-in system quality codes.

Quality codes are assigned a Type which represents the validity of the data: GOOD, BAD or UNCERTAIN.


System Qualities
-----------------
System qualities can have their source and quality codes re-assigned but they can not be removed.

Data Subnormal
	Non-Good values have been excluded in the aggregate calculation so the quality of the data is uncertain.
Data Unavailable
	There is no data available for this period and has been specifically indicated as a gap by the user.
No Bounds
	Bounding values determine the start and end points when requesting raw data. If a raw data value exists at the start or end point, it is considered the bounding value. If no raw data value exists at the start or end point, the next data point outside of the range is considered the bounding value and the quality will be shown as No Bounds.
No Data
	There is no data available for the aggregation calculation period after non-good values have been excluded.
No Good Data
	There is no data available for the aggregate calculation period.

.. raw:: latex

    \newpage

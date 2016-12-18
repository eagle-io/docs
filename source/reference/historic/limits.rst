.. _historic-limits:

Limits
=======

Eagle.io supports the acquisition and storage of up to **20000 records per** :ref:`Data Source <node-configuration-datasource-datalogger>` **per day**. 
Exceeding the limit will trigger an :ref:`Overload Alarm <overload-alarm>` on the Source.

.. note:: If you believe your application may exceed our historic limits, please contact us to discuss your requirements.

Daily intervals are defined in the UTC time zone. The acquisition limit applies to the number of records acquired in one UTC day, regardless of the record timestamps. The storage limit applies to the number of records that have timestamps occurring on the same UTC day, regardless of when they are acquired. 

The limit of 20000 records is sufficient for Data Sources that generate data continuously at 5-second intervals. While eagle.io supports smaller data intervals (down to 1 millisecond), such resolutions cannot be generated continuously. For example, if a Data Source generated data at 1-second intervals, the limit of 20000 records would be reached in under 6 hours.

Under some circumstances, a Data Source will be exempt from the acquisition limit (but will always be subject to the storage limit of 20000 records per day):

1. Data Sources that have never been acquired before (because they have just been created)
2. Data Sources that do not have current data (defined as a record that occurs on the current day in the UTC time zone)
3. Data Sources that have had all their historical records deleted since the last acquisition

This exemption from the acquisition limit allows a large number of historical records to be backfilled at one time; however, each individual day of data must still not have more than 20000 records. For example, when connecting a new data logger that has been logging data at 5-second intervals for 1 month, all the data on the device can be acquired by eagle.io in a single attempt, even though this is over 500000 records. Note that each individual day of data still does not contain more than 20000 records, and so does not exceed the storage limit.

The acquisition limit and storage limit have different effects, highlighted by the following examples.

Acquisition limit example
--------------------------

Consider a data set spanning 1 week at 5-second resolution, i.e. 17280 records per day, for a total of 120960 records. If you tried to acquire all these records in one attempt, you would hit the daily limit of 20000 records acquired per day, even though each individual day of records is under the storage limit. The following day, you would be able to acquire a further 20000 records. In total, you would need to perform daily acquisitions for a week, adding only 20000 records per day, to acquire the entire data set. However, if any of the previously listed exemptions applied to the Data Source, you would be able to acquire all 120960 records in a single attempt.


Storage limit example
----------------------

Consider a data set spanning 1 day at 1-second resolution, i.e. a total of 86400 records with timestamps all occurring on the same day. If you only acquired 1000 of these records each day, you would not hit the daily acquisition limit. However, after 20 days, you would hit the storage limit of 20000 records with timestamps occurring on the same day. You would then be permanently restricted from storing any more records with timestamps occurring on that day. There are no exemptions to the storage limit, so the only way to store additional records on that day would be to delete some or all of the existing records.

| 

.. raw:: latex

    \newpage

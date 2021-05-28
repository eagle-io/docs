.. _liquid-filters-time:

time
======

Converts an :ref:`ISO8601 timestamp <time-format-iso8601>` or :ref:`OPC Relative time <relative-time>` 
into another time format using :ref:`time format tokens <time-format-tokens>`. 


Input

.. code:: liquid

   {{ node.createdTime | time }}

Output

.. code:: text

   2021-06-01 10:50:00

Input

.. code:: liquid

   {{ "2021-06-01T10:50:00.000Z" | time }}

Output

.. code:: text

   2021-06-01 10:50:00


Here the input value is an :ref:`OPC Relative time <relative-time>`

Input

.. code:: liquid

   {{ "NOW" | time }}

Output

.. code:: text

   2021-07-18 14:30:00

| 


Format
---------
Format the output using :ref:`time format tokens <time-format-tokens>`. 
The default format is ``YYYY-MM-DD HH:mm:ss``.

Input

.. code:: liquid

   {{ node.createdTime | time: "DD MMMM YYYY" }}

Output

.. code:: text

   01 June 2021

| 


Timezone and DST
----------------
Provide :ref:`timezone <timezone>` for output in regional time. 
The default timezone is ``Etc/UTC``.

Input

.. code:: liquid

    {{ "2021-01-01T01:50:00.000Z" | time: "YYYY-MM-DD HH:mm:ss", "Australia/Sydney" }}

Output

.. code:: text
    
    2021-06-01 12:50:00


The timezone will always be adjusted to DST (Daylight Savings Time) but this can be disabled to ensure a fixed UTC offset by including ``false`` as an additional option.

Input

.. code:: liquid

    {{ "2021-01-01T01:50:00.000Z" | time: "YYYY-MM-DD HH:mm:ss", "Australia/Sydney", false }}

Output

.. code:: text
    
    2021-06-01 11:50:00

| 

.. note:: 
    :ref:`Report Source <nodes-and-configuration>` will default to the *Timezone* and *DST* specified in its properties dialog. 
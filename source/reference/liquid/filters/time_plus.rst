.. _liquid-filters-time_plus:

time_plus
=========

Adds interval of time to an :ref:`ISO8601 timestamp <time-format-iso8601>`.

Interval units include: ``years``, ``months``, ``weeks``, ``days``, ``hours``, ``minutes``, ``seconds``, ``milliseconds``

Input

.. code:: liquid

   {{ node.createdTime | time_plus: 1, "years"}}

Output

.. code:: text

    2022-06-01T10:50:00.000Z

| 


The ``time_plus`` filter can be applied multiple times 

Input

.. code:: liquid

   {{ "2021-06-01T10:50:00.000Z" | time_plus: 1, "years" | time_plus: 2, "days"}}

Output

.. code:: text

    2022-06-03T10:50:00.000Z

| 

Format the timestamp by applying the :ref:`time <liquid-filters-time>` filter last

Input

.. code:: liquid

   {{ "2021-06-01T10:50:00.000Z" | time_plus: 1, "years" | time: "MMMM YYYY"}}

Output

.. code:: text

    June 2022

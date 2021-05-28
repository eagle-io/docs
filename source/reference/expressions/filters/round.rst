.. _liquid-filters-round:

round
======

Rounds a number to the nearest integer or, if a number is passed as an
argument, to that number of decimal places.

Input

.. code:: liquid

   {{ 1.2 | round }}

Output

.. code:: text

   1

Input

.. code:: liquid

   {{ 2.7 | round }}

Output

.. code:: text

   3

Input

.. code:: liquid

   {{ 183.357 | round: 2 }}

Output

.. code:: text

   183.36
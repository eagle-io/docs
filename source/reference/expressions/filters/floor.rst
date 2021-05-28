.. _liquid-filters-floor:

floor
======

Rounds the input down to the nearest whole number. Liquid tries to
convert the input to a number before the filter is applied.

Input

.. code:: liquid

   {{ 1.2 | floor }}

Output

.. code:: text

   1

Input

.. code:: liquid

   {{ 2.0 | floor }}

Output

.. code:: text

   2

Input

.. code:: liquid

   {{ 183.357 | floor }}

Output

.. code:: text

   183

Here the input value is a string:

Input

.. code:: liquid

   {{ "3.5" | floor }}

Output

.. code:: text

   3
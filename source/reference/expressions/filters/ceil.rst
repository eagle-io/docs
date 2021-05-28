.. _liquid-filters-ceil:

ceil
======

Rounds the input up to the nearest whole number. Liquid tries to convert the input to a number before the filter is applied.

Input

.. code:: liquid

   {{ 1.2 | ceil }}

Output

.. code:: text

   2

Input

.. code:: liquid

   {{ 2.0 | ceil }}

Output

.. code:: text

   2

Input

.. code:: liquid

   {{ 183.357 | ceil }}

Output

.. code:: text

   184

Here the input value is a string:

Input

.. code:: liquid

   {{ "3.5" | ceil }}

Output

.. code:: text

   4
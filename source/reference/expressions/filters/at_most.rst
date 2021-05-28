.. _liquid-filters-at_most:

at_most
=========

Limits a number to a maximum value.

Input

.. code:: liquid

   {{ 4 | at_most: 5 }}

Output

.. code:: text

   4

Input

.. code:: liquid

   {{ 4 | at_most: 3 }}

Output

.. code:: text

   3
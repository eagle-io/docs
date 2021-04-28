.. _liquid-filters-at_least:

at_least
=========

Limits a number to a minimum value.

Input

.. code:: liquid

   {{ 4 | at_least: 5 }}

Output

.. code:: text

   5

Input

.. code:: liquid

   {{ 4 | at_least: 3 }}

Output

.. code:: text

   4
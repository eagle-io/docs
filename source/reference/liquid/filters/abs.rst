.. _liquid-filters-abs:

abs
====
Returns the absolute value of a number.

Input

.. code:: liquid

   {{ -17 | abs }}

Output

.. code:: text

   17

Input

.. code:: liquid

   {{ 4 | abs }}

Output

.. code:: text

   4

``abs`` will also work on a string that only contains a number:

Input

.. code:: liquid

   {{ "-19.86" | abs }}

Output

.. code:: text

   19.86

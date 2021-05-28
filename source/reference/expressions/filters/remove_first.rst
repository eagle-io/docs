.. _liquid-filters-remove_first:

remove_first
=============

Removes only the first occurrence of the specified substring from a
string.

Input

.. code:: liquid

   {{ "I strained to see the train through the rain" | remove_first: "rain" }}

Output

.. code:: text

   I strained to see the t through the rain
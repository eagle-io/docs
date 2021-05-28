.. _liquid-filters-remove:

remove
========

Removes every occurrence of the specified substring from a string.

Input

.. code:: liquid

   {{ "I strained to see the train through the rain" | remove: "rain" }}

Output

.. code:: text

   I strained to see the t through the 
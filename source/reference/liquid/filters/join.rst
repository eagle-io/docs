.. _liquid-filters-join:

join
======

Combines the items in an array into a single string using the argument
as a separator.

Input

.. code:: liquid

   {% assign beatles = "John, Paul, George, Ringo" | split: ", " %}
   {{ beatles | join: " and " }}

Output

.. code:: text

   John and Paul and George and Ringo
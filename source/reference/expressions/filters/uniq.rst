.. _liquid-filters-uniq:

uniq
=====

Removes any duplicate elements in an array.

Input

.. code:: liquid

   {% assign my_array = "ants, bugs, bees, bugs, ants" | split: ", " %}
   {{ my_array | uniq | join: ", " }}


Output

.. code:: text

    ants, bugs, bees
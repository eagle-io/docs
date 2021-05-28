.. _liquid-filters-reverse:

reverse
========

Reverses the order of the items in an array. ``reverse`` cannot reverse
a string.

Input

.. code:: liquid

   {% assign my_array = "apples, oranges, peaches, plums" | split: ", " %}

   {{ my_array | reverse | join: ", " }}

Output

.. code:: text



   plums, peaches, oranges, apples

Although ``reverse`` cannot be used directly on a string, you can split
a string into an array, reverse the array, and rejoin it by chaining
together filters:

Input

.. code:: liquid

   {{ "Ground control to Major Tom." | split: "" | reverse | join: "" }}

Output

.. code:: text

   .moT rojaM ot lortnoc dnuorG
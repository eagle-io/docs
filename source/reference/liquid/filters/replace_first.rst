.. _liquid-filters-replace_first:

replace_first
=============

Replaces only the first occurrence of the first argument in a string
with the second argument.

Input

.. code:: liquid

   {{ "Take my protein pills and put my helmet on" | replace_first: "my", "your" }}

Output

.. code:: text

   Take your protein pills and put my helmet on
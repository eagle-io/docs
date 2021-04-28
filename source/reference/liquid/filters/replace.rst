.. _liquid-filters-replace:

replace
=========

Replaces every occurrence of the first argument in a string with the
second argument.

Input

.. code:: liquid

   {{ "Take my protein pills and put my helmet on" | replace: "my", "your" }}

Output

.. code:: text

   Take your protein pills and put your helmet on
.. _liquid-filters-json:

json
======

Convert variables to JSON text.

Input

.. code:: liquid

   {% assign arr = "foo bar coo" | split: " " %}
   {{ arr | json }}

Output

.. code:: text

   ["foo","bar","coo"]
.. _liquid-filters-split:

split
======

Divides a string into an array using the argument as a separator.
``split`` is commonly used to convert comma-separated items from a
string to an array.

Input

.. code:: liquid

   {% assign beatles = "John, Paul, George, Ringo" | split: ", " %}

   {% for member in beatles %}
     {{ member }}
   {% endfor %}

Output

.. code:: text





     John

     Paul

     George

     Ringo
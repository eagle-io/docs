.. _liquid-filters-size:

size
=====

Returns the number of characters in a string or the number of items in
an array.

Input

.. code:: liquid

   {{ "Ground control to Major Tom." | size }}

Output

.. code:: text

   28

Input

.. code:: liquid

   {% assign my_array = "apples, oranges, peaches, plums" | split: ", " %}

   {{ my_array.size }}

Output

.. code:: text



   4

You can use ``size`` with dot notation when you need to use the filter
inside a tag:

.. code:: liquid

   {% if site.pages.size > 10 %}
     This is a big website!
   {% endif %}
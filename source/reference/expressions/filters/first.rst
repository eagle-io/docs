.. _liquid-filters-first:

first
======

Returns the first item of an array.

Input

.. code:: liquid

   {{ "Ground control to Major Tom." | split: " " | first }}

Output

.. code:: text

   Ground

Input

.. code:: liquid

   {% assign my_array = "zebra, octopus, giraffe, tiger" | split: ", " %}
   {{ my_array.first }}

Output

.. code:: text


   zebra

You can use ``first`` with dot notation when you need to use the filter
inside a tag:

.. code:: liquid

   {% if my_array.first == "zebra" %}
     Here comes a zebra!
   {% endif %}
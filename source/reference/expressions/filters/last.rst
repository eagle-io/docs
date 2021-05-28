.. _liquid-filters-last:

last
======

Returns the last item of an array.

Input

.. code:: liquid

   {{ "Ground control to Major Tom." | split: " " | last }}

Output

.. code:: text

   Tom.

Input

.. code:: liquid

   {% assign my_array = "zebra, octopus, giraffe, tiger" | split: ", " %}
   {{ my_array.last }}

Output

.. code:: text


   tiger

You can use ``last`` with dot notation when you need to use the filter
inside a tag:

.. code:: liquid

   {% if my_array.last == "tiger" %}
     There goes a tiger!
   {% endif %}
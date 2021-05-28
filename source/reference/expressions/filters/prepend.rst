.. _liquid-filters-prepend:

prepend
========

Adds the specified string to the beginning of another string.

Input

.. code:: liquid

   {{ "apples, oranges, and bananas" | prepend: "Some fruit: " }}

Output

.. code:: text

   Some fruit: apples, oranges, and bananas

``prepend`` can also be used with variables:

Input

.. code:: liquid

   {% assign url = "example.com" %}
   {{ "/index.html" | prepend: url }}

Output

.. code:: text


   example.com/index.html
.. _liquid-filters-sort:

sort
=====

Sorts items in an array in case-sensitive order.

Input

.. code:: liquid

   {% assign my_array = "zebra, octopus, giraffe, Sally Snake" | split: ", " %}

   {{ my_array | sort | join: ", " }}

Output

.. code:: text



   Sally Snake, giraffe, octopus, zebra

An optional argument specifies which property of the array’s items to
use for sorting.

.. code:: liquid

   {% assign products_by_price = collection.products | sort: "price" %}
   {% for product in products_by_price %}
     <h4>{{ product.title }}</h4>
   {% endfor %}
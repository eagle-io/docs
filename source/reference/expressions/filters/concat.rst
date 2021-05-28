.. _liquid-filters-concat:

concat
========

Concatenates (joins together) multiple arrays. The resulting array
contains all the items from the input arrays.

Input

.. code:: liquid

   {% assign fruits = "apples, oranges, peaches" | split: ", " %}
   {% assign vegetables = "carrots, turnips, potatoes" | split: ", " %}

   {% assign everything = fruits | concat: vegetables %}

   {% for item in everything %}
   - {{ item }}
   {% endfor %}

Output

.. code:: text

   - apples
   - oranges
   - peaches
   - carrots
   - turnips
   - potatoes

You can string together ``concat`` filters to join more than two arrays:

Input

.. code:: liquid

   {% assign furniture = "chairs, tables, shelves" | split: ", " %}

   {% assign everything = fruits | concat: vegetables | concat: furniture %}

   {% for item in everything %}
   - {{ item }}
   {% endfor %}

Output

.. code:: text

   - apples
   - oranges
   - peaches
   - carrots
   - turnips
   - potatoes
   - chairs
   - tables
   - shelves

Output

.. code:: text

   - business
   - celebrities
   -
   - lifestyle
   - sports
   -
   - technology

By using ``compact`` when we create our ``site_categories`` array, we
can remove all the ``nil`` values in the array.

Input

.. code:: liquid

   {% assign site_categories = site.pages | map: "category" | compact %}

   {% for category in site_categories %}
   - {{ category }}
   {% endfor %}

Output

.. code:: text

   - business
   - celebrities
   - lifestyle
   - sports
   - technology
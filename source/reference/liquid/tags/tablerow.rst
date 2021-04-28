.. _liquid-tags-tablerow:

tablerow
=========

Generates an HTML table. Must be wrapped in opening ``<table>`` and closing ``</table>`` HTML tags.

Basic Usage
-----------

Input

.. code:: liquid

   <table>
   {% tablerow product in collection.products %}
     {{ product.title }}
   {% endtablerow %}
   </table>

Output

.. code:: html

   <table>
     <tr class="row1">
       <td class="col1">
         Cool Shirt
       </td>
       <td class="col2">
         Alien Poster
       </td>
       <td class="col3">
         Batman Poster
       </td>
       <td class="col4">
         Bullseye Shirt
       </td>
       <td class="col5">
         Another Classic Vinyl
       </td>
       <td class="col6">
         Awesome Jeans
       </td>
     </tr>
   </table>


Parameters
----------

cols
~~~~

Defines how many columns the tables should have.

Input

.. code:: liquid

   {% tablerow product in collection.products cols:2 %}
     {{ product.title }}
   {% endtablerow %}

Output

.. code:: html

   <table>
     <tr class="row1">
       <td class="col1">
         Cool Shirt
       </td>
       <td class="col2">
         Alien Poster
       </td>
     </tr>
     <tr class="row2">
       <td class="col1">
         Batman Poster
       </td>
       <td class="col2">
         Bullseye Shirt
       </td>
     </tr>
     <tr class="row3">
       <td class="col1">
         Another Classic Vinyl
       </td>
       <td class="col2">
         Awesome Jeans
       </td>
     </tr>
   </table>

limit
~~~~~

Exits the tablerow after a specific index.

.. code:: liquid

   {% tablerow product in collection.products cols:2 limit:3 %}
     {{ product.title }}
   {% endtablerow %}

offset
~~~~~~

Starts the tablerow after a specific index.

.. code:: liquid

   {% tablerow product in collection.products cols:2 offset:3 %}
     {{ product.title }}
   {% endtablerow %}

range
~~~~~

Defines a range of numbers to loop through. The range can be defined by
both literal and variable numbers.

.. code:: liquid

   <!--variable number example-->

   {% assign num = 4 %}
   <table>
   {% tablerow i in (1..num) %}
     {{ i }}
   {% endtablerow %}
   </table>

   <!--literal number example-->

   <table>
   {% tablerow i in (3..5) %}
     {{ i }}
   {% endtablerow %}
   </table>
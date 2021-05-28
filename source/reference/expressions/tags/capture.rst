.. _liquid-tags-capture:

capture
========

Captures the string inside of the opening and closing tags and assigns
it to a variable. Variables created through ``capture`` are strings.

Input

.. code:: liquid

   {% capture my_variable %}I am being captured.{% endcapture %}
   {{ my_variable }}

Output

.. code:: text

   I am being captured.

Using ``capture``, you can create complex strings using other variables
created with ``assign``:

Input

.. code:: liquid

   {% assign favorite_food = "pizza" %}
   {% assign age = 35 %}

   {% capture about_me %}
   I am {{ age }} and my favorite food is {{ favorite_food }}.
   {% endcapture %}

   {{ about_me }}

Output

.. code:: text

   I am 35 and my favourite food is pizza.
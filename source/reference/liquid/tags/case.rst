.. _liquid-tags-case:

case
=====

Creates a switch statement to compare a variable with different values.
``case`` initializes the switch statement, and ``when`` compares its
values.

Input

.. code:: liquid

   {% assign handle = "cake" %}
   {% case handle %}
     {% when "cake" %}
        This is a cake
     {% when "cookie" %}
        This is a cookie
     {% else %}
        This is not a cake nor a cookie
   {% endcase %}

Output

.. code:: text

   This is a cake
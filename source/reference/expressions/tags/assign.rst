.. _liquid-tags-assign:

assign
=======

Creates a new variable.

Input

.. code:: liquid

   {% assign my_variable = false %}
   {% if my_variable != true %}
     This statement is valid.
   {% endif %}

Output

.. code:: text

   This statement is valid.

Wrap a variable value in quotations ``"`` to save it as a string.

Input

.. code:: liquid

   {% assign foo = "bar" %}
   {{ foo }}

Output

.. code:: text

   bar
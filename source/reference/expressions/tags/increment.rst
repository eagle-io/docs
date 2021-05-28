.. _liquid-tags-increment:

increment
==========

Creates a new number variable, and increases its value by one every time
it is called. The first value is ``0``.

Input

.. code:: liquid

   {% increment my_counter %}
   {% increment my_counter %}
   {% increment my_counter %}

Output

.. code:: text

   0
   1
   2

Variables created through the ``increment`` tag are independent from
variables created through `assign`_ or `capture`_.

In the example below, a variable named “var” is created through
``assign``. The ``increment`` tag is then used several times on a
variable with the same name. Note that the ``increment`` tag does not
affect the value of “var” that was created through ``assign``.

Input

.. code:: liquid

   {% assign var = 10 %}
   {% increment var %}
   {% increment var %}
   {% increment var %}
   {{ var }}

Output

.. code:: text

   0
   1
   2
   10

.. _assign: ./assign.html
.. _capture: ./capture.html
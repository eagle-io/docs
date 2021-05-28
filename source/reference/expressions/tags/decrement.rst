.. _liquid-tags-decrement:

decrement
==========

Creates a new number variable, and decreases its value by one every time
it is called. The first value is ``-1``.

Input

.. code:: liquid

   {% decrement variable %}
   {% decrement variable %}
   {% decrement variable %}

Output

.. code:: text

   -1
   -2
   -3

Like :ref:`increment <liquid-tags-increment>`, variables declared inside ``decrement`` are 
independent from variables created through :ref:`assign <liquid-tags-assign>` or :ref:`capture <liquid-tags-capture>`.

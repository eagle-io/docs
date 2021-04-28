.. _liquid-tags-if:

if
===

Executes a block of code only if a certain condition is ``true``.


Input

.. code:: liquid

   {% if product.title == "Awesome Shoes" %}
     These shoes are awesome!
   {% endif %}

Output

.. code:: text

   These shoes are awesome!

| 


elsif / else
------------

Adds more conditions within an ``if`` or ``unless`` block.

Input

.. code:: liquid

   <!-- If customer.name = "anonymous" -->
   {% if customer.name == "kevin" %}
     Hey Kevin!
   {% elsif customer.name == "anonymous" %}
     Hey Anonymous!
   {% else %}
     Hi Stranger!
   {% endif %}

Output

.. code:: text

   Hey Anonymous!
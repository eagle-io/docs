.. _liquid-tags-unless:

unless
=======

The opposite of :ref:`if <liquid-tags-if>` – executes a block of code only if a certain
condition is **not** met.

Input

.. code:: liquid

   {% unless product.title == "Awesome Shoes" %}
     These shoes are not awesome.
   {% endunless %}

Output

.. code:: text

   These shoes are not awesome.

This would be the equivalent of doing the following:

.. code:: liquid

   {% if product.title != "Awesome Shoes" %}
     These shoes are not awesome.
   {% endif %}
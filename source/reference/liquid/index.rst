Liquid
=======

`Liquid <https://shopify.github.io/liquid/>`_ is a modern open-source template language that makes it easy for users to produce dynamic content.

Liquid code can be categorized into :ref:`objects <liquid-overview-objects>`, :ref:`filters <liquid-overview-filters>` and :ref:`tags <liquid-overview-tags>`.

| 

.. toctree::
   :maxdepth: 1
   :hidden:

   filters/index
   tags/index


Overview
---------

|  


.. _liquid-overview-objects:

Objects
~~~~~~~~

Objects tell Liquid where to insert dynamic content. 
Objects and variable names are denoted by double curly braces: ``{{`` and ``}}``.

Input

.. code:: liquid

   {{ input.name }}

Output

.. code:: text

   Workspace 01

In this case, Liquid is rendering the content of an object called ``input.name``, and that object contains the text ``Workspace 01``.

| 


.. _liquid-overview-filters:

Filters
~~~~~~~~

Filters change the output of a Liquid object. They are used within an output and are separated by a ``|``.

Input

.. code:: liquid

   {{ "/my/fancy/url" | append: ".html" }}

Output

.. code:: text

   /my/fancy/url.html


Multiple filters can be used on one output. They are applied from left to right.

Input

.. code:: liquid

   {{ "adam!" | capitalize | prepend: "Hello " }}

Output

.. code:: text

    Hello Adam!

| 


.. _liquid-overview-tags:

Tags
~~~~~

Tags create the logic and control flow for templates. They are denoted by curly braces and percent signs: ``{%`` and ``%}``.

The markup used in tags does not produce any visible text. This means that you can assign variables and create conditions and loops without showing any of the Liquid logic in the content.

Input

.. code:: liquid

    {% if user %}
      Hello {{ user.name }}!
    {% endif %}

Output

.. code:: text

    Hello Adam!

| 


.. _liquid-overview-operators:

Operators
~~~~~~~~~~
Liquid operators are very simple and different. There’re 2 types of
operators supported:

-  Comparison operators: ``==``, ``!=``, ``>``, ``<``, ``>=``, ``<=``
-  Logic operators: ``or``, ``and``, ``contains``

Thus numerical operators are not supported and you cannot even plus two
numbers like this ``{{a + b}}``, instead we need a filter ``{{ a | plus: b}}``. 


Precedence
```````````

1. Comparison operators. All comparison operations have the same
   precedence and higher than logic operators.
2. Logic operators. All logic operators have the same precedence.

Associativity
``````````````

Logic operators are evaluated from right to left, see `shopify docs <https://help.shopify.com/en/themes/liquid/basics/operators#order-of-operations>`_.

| 


.. _liquid-overview-truthy_falsy:

Truthy and Falsy
~~~~~~~~~~~~~~~~~

According to `shopify documentation <https://shopify.github.io/liquid/basics/truthy-and-falsy/>`_ everything other than ``false`` and
``nil``/``null`` is truthy. Our implementation is slightly different:

================ ====== =====
value            truthy falsy
================ ====== =====
``true``         ✔️     
``false``               ✔️
``nil``/``null``        ✔️
``undefined``           ✔️
``string``       ✔️     
``empty string`` ✔️     
``0``            ✔️     
``integer``      ✔️     
``float``        ✔️     
``array``        ✔️     
``empty array``  ✔️     
================ ====== =====

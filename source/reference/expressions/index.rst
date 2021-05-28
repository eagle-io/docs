.. _expressions:

Expressions
============

Expressions make it easy for users to produce dynamic content. 

Our expresssions are based on the open-source `Liquid <https://shopify.github.io/liquid/>`_ template language with 
some custom filter additions. 

Liquid expressions code can be categorized into :ref:`objects <expressions-overview-objects>`, :ref:`filters <expressions-overview-filters>` and :ref:`tags <liquid-overview-tags>`.

| 

.. toctree::
   :maxdepth: 1
   :hidden:

   filters/index
   tags/index


Overview
---------

|  


.. _expressions-overview-objects:

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


.. _expressions-overview-filters:

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


.. _expressions-overview-tags:

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


.. _expressions-overview-operators:

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
3. Logic operators are evaluated from right to left, see `shopify docs <https://help.shopify.com/en/themes/liquid/basics/operators#order-of-operations>`_.

| 


.. _expressions-overview-truthy_falsy:

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

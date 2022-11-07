.. _expressions:

Expressions
============

Expressions provide a simple method to describe dynamic text content.

Our expressions are based on the open-source `Liquid <https://shopify.github.io/liquid/>`_ template language with
some custom filter additions.

Expressions can be categorized into :ref:`objects <expressions-overview-objects>`, :ref:`filters <expressions-overview-filters>` and :ref:`tags <expressions-overview-tags>`.

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

Objects describe where to insert dynamic content in your expression and are denoted by double curly braces: ``{{`` and ``}}``.

The following objects are available to your expression:

.. table::
    :class: table-fluid

    ======================   ============================================================
    **NOW**                  Current time (in timezone of Source)
    **THIS**                 Reference to Node of current expression
    **SOURCE**               Reference to Source of current expression
    **LOCATION**             Reference to Location of current expression
    **WORKSPACE**            Reference to Workspace of current expression
    ======================   ============================================================

In the following example, the expression refers to an object called ``WORKSPACE``, which has an attribute called ``name``, and that object attribute contains the text ``Workspace 01``.

Input

.. code:: liquid

   {{ WORKSPACE.name }}

Output

.. code:: text

   Workspace 01

.. note::
   A full list of available object attributes are described :ref:`here<api-node-attributes>`.

|

.. _expressions-overview-filters:

Filters
~~~~~~~~

Filters change the output of an object. They are used within an output and are separated by a ``|``.

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

.. note::
    A full list of available filters are described :ref:`here<expressions-filters>`


.. _expressions-overview-tags:

Tags
~~~~~

Tags create the logic and control flow for templates. They are denoted by curly braces and percent signs: ``{%`` and ``%}``.

The markup used in tags does not produce any visible text. This means that you can assign variables and create conditions and loops without showing any of the logic in the content.

Input

.. code:: liquid

    {% if user %}
      Hello {{ user.name }}!
    {% endif %}

Output

.. code:: text

    Hello Adam!

|

.. note::
    A full list of available tags are described :ref:`here<expressions-tags>`

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

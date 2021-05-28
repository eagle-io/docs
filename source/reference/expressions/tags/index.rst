Tags
======

Liquid expressions implement business-logic independent tags that are typically
implemented in `shopify/liquid <https://shopify.github.io/liquid/>`_. 
This section contains the specification and examples for all the tags implemented by Liquid.

There’re a dozen of tags supported by LiquidJS, with all tags in 
`shopify/liquid <https://shopify.github.io/liquid/>`_. 
These tags can be categorized into these groups:

+-----------------------+-----------------------+-----------------------+
| Category              | Purpose               | Tags                  |
+=======================+=======================+=======================+
| Iteration             | iterate over a        | for, cycle, tablerow  |
|                       | collection            |                       |
+-----------------------+-----------------------+-----------------------+
| Control Flow          | control the execution | if, unless, elsif,    |
|                       | branch of template    | else, case, when      |
|                       | rendering             |                       |
+-----------------------+-----------------------+-----------------------+
| Variable              | define and alter      | assign, increment,    |
|                       | variables             | decrement             |
+-----------------------+-----------------------+-----------------------+
| Language              | temporarily disable   | raw, comment          |
|                       | Liquid syntax         |                       |
+-----------------------+-----------------------+-----------------------+

.. toctree::
   :maxdepth: 1
   :hidden:

   assign
   capture
   case
   comment
   cycle
   decrement
   for
   if
   increment
   raw
   tablerow
   unless

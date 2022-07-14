.. _liquid-filters-decimal:

decimal
========

Decimal uses tokens to format the number to a set number of decimal places. 
``0`` will always display a digit. ``#`` will only display a digit if it exists. 
Liquid tries to convert the input to a number before the filter is applied.


Input

.. code:: liquid

   {{ 1.23 | decimal: "0.#" }}

Output

.. code:: text

   1.2


Input

.. code:: liquid

   {{ 1000000 | decimal: "#,###.#" }}

Output

.. code:: text

   1,000,000

Input

.. code:: liquid

   {{ "2" | decimal: "0.00" }}

Output

.. code:: text

   2.00

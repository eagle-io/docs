.. _liquid-filters-escape_once:

escape_once
============

Escapes a string without changing existing escaped entities. It doesn’t
change strings that don’t have anything to escape.

Input

.. code:: liquid

   {{ "1 < 2 & 3" | escape_once }}

Output

.. code:: text

   1 &lt; 2 &amp; 3

Input

.. code:: liquid

   {{ "{{"1 < 2 & 3" | escape}}" | escape_once }}

Output

.. code:: text

   {{"1 < 2 & 3" | escape}}
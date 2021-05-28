.. _liquid-filters-strip:

strip
======

Removes all whitespace (tabs, spaces, and newlines) from both the left
and right sides of a string. It does not affect spaces between words.

Input

.. code:: liquid

   BEGIN{{ "          So much room for activities!          " | strip }}END

Output

.. code:: text

   BEGINSo much room for activities!END
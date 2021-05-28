.. _liquid-filters-rstrip:

rstrip
=======

Removes all whitespace (tabs, spaces, and newlines) from the right side
of a string. It does not affect spaces between words.

Input

.. code:: liquid

   BEGIN{{ "          So much room for activities!          " | rstrip }}END

Output

.. code:: text

   BEGIN          So much room for activities!END
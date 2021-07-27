.. _liquid-filters-link_to:

link_to
======

Generates an HTML link.

Input

.. code:: liquid

   {{ "Ground control to Major Tom." | link_to: "http://majortom.com" }}

Output

.. code:: text

   <a href="http://majortom.com">Ground control to Major Tom.</a>


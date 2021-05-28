.. _liquid-filters-capitalize:

capitalize
===========

Makes the first character of a string capitalized.

Input

.. code:: liquid

   {{ "title" | capitalize }}

Output

.. code:: text

   Title

``capitalize`` only capitalizes the first character of a string, so
later words are not affected:

Input

.. code:: liquid

   {{ "my great title" | capitalize }}

Output

.. code:: text

   My great title
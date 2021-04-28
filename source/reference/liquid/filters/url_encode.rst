.. _liquid-filters-url_encode:

url_encode
===========

Converts any URL-unsafe characters in a string into percent-encoded
characters.

Input

.. code:: liquid

   {{ "john@liquid.com" | url_encode }}

Output

.. code:: text

   john%40liquid.com

Input

.. code:: liquid

   {{ "Tetsuro Takara" | url_encode }}

Output

.. code:: text

   Tetsuro+Takara
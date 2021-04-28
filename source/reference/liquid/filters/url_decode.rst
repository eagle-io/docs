.. _liquid-filters-url_decode:

url_decode
===========

Decodes a string that has been encoded as a URL.

Input

.. code:: liquid

   {{ "%27Stop%21%27+said+Fred" | url_decode }}

Output

.. code:: text

   'Stop!' said Fred
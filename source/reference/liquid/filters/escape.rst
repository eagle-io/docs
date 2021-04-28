.. _liquid-filters-escape:

escape
=======

Escapes a string by replacing HTML special characters with escape
sequences. It doesn’t change strings that don’t have anything to escape.

Input

.. code:: liquid

   {{ "Have you read 'James & the Giant Peach'?" | escape }}

Output

.. code:: text

   Have you read &#39;James &amp; the Giant Peach&#39;?


Input

.. code:: liquid

   {{ "Tetsuro Takara" | escape }}

Output

.. code:: text

   Tetsuro Takara
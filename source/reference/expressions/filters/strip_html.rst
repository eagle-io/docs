.. _liquid-filters-strip_html:

strip_html
===========

Removes any HTML tags from a string.

Input

.. code:: liquid

   {{ "Have <em>you</em> read <strong>Ulysses</strong>?" | strip_html }}

Output

.. code:: text

   Have you read Ulysses?
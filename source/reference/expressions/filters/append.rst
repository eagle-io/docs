.. _liquid-filters-append:

append
======
Concatenates two strings and returns the concatenated value.

Input

.. code:: liquid

   {{ "/my/fancy/url" | append: ".html" }}

Output

.. code:: text

   /my/fancy/url.html

``append`` can also be used with variables:

Input

.. code:: liquid

   {% assign filename = "/index.html" %}
   {{ "website.com" | append: filename }}

Output

.. code:: text


   website.com/index.html
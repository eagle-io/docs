.. _liquid-filters-newline_to_br:

newline_to_br
==============

Replaces every newline (``\n``) in a string with an HTML line break (``<br />``).

Input

.. code:: liquid

   {% capture string_with_newlines %}
   Hello
   there
   {% endcapture %}

   {{ string_with_newlines | newline_to_br }}

Output

.. code:: html


   <br/>Hello<br/>there<br/>
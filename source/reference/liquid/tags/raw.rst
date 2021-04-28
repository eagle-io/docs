.. _liquid-tags-raw:

raw
====

Raw temporarily disables tag processing. This is useful for generating
content (eg, Mustache, Handlebars) which uses conflicting syntax.

Input

.. code:: liquid

   {% raw %}
     In Handlebars, {{ this }} will be HTML-escaped, but
     {{{ that }}} will not.
   {% endraw %}

Output

.. code:: text

   In Handlebars, {{ this }} will be HTML-escaped, but {{{ that }}} will not.
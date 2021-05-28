.. _liquid-tags-comment:

comment
========

Allows you to leave un-rendered code inside a Liquid template. Any text
within the opening and closing ``comment`` blocks will not be printed,
and any Liquid code within will not be executed.

Input

.. code:: liquid

   Anything you put between {% comment %} and {% endcomment %} tags
   is turned into a comment.

Output

.. code:: liquid

   Anything you put between tags is turned into a comment.
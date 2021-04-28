.. _liquid-tags-cycle:

cycle
========

Loops through a group of strings and prints them in the order that they
were passed as arguments. Each time ``cycle`` is called, the next string
argument is printed.


Input

.. code:: liquid

   {% cycle "one", "two", "three" %}
   {% cycle "one", "two", "three" %}
   {% cycle "one", "two", "three" %}
   {% cycle "one", "two", "three" %}

Output

.. code:: text

   one
   two
   three
   one

Uses for ``cycle`` include:

-  applying odd/even classes to rows in a table
-  applying a unique class to the last product thumbnail in a row


| 

Parameters
----------

``cycle`` accepts a “cycle group” parameter in cases where you need
multiple ``cycle`` blocks in one template. If no name is supplied for
the cycle group, then it is assumed that multiple calls with the same
parameters are one group.

Input

.. code:: liquid

   {% cycle "first": "one", "two", "three" %}
   {% cycle "second": "one", "two", "three" %}
   {% cycle "second": "one", "two", "three" %}
   {% cycle "first": "one", "two", "three" %}

Output

.. code:: text

   one
   one
   two
   two
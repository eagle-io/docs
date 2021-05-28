.. _liquid-filters-slice:

slice
======

Returns a substring of 1 character beginning at the index specified by
the first argument. An optional second argument specifies the length of
the substring to be returned.

String indices are numbered starting from 0.

Input

.. code:: liquid

   {{ "Liquid" | slice: 0 }}

Output

.. code:: text

   L

Input

.. code:: liquid

   {{ "Liquid" | slice: 2 }}

Output

.. code:: text

   q

Input

.. code:: liquid

   {{ "Liquid" | slice: 2, 5 }}

Output

.. code:: text

   quid

If the first argument is a negative number, the indices are counted from
the end of the string:

Input

.. code:: liquid

   {{ "Liquid" | slice: -3, 2 }}

Output

.. code:: text

   ui
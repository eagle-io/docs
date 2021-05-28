.. _liquid-filters-downcase:

downcase
=========

Makes each character in a string lowercase. It has no effect on strings which are already all lowercase.

Input

.. code:: liquid

   {{ "Parker Moore" | downcase }}

Output

.. code:: text

   parker moore

Input

.. code:: liquid

   {{ "apple" | downcase }}

Output

.. code:: text

   apple
.. _liquid-filters-upcase:

upcase
=======

Makes each character in a string uppercase. It has no effect on strings
which are already all uppercase.

Input

.. code:: liquid

   {{ "Parker Moore" | upcase }}

Output

.. code:: text

   PARKER MOORE

Input

.. code:: liquid

   {{ "APPLE" | upcase }}

Output

.. code:: text

   APPLE
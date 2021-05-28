.. _liquid-filters-truncatewords:

truncatewords
=============

Shortens a string down to the number of words passed as an argument. If
the specified number of words is less than the number of words in the
string, an ellipsis (…) is appended to the string.

Input

.. code:: liquid

   {{ "Ground control to Major Tom." | truncatewords: 3 }}

Output

.. code:: text

   Ground control to...


| 

Custom ellipsis
---------------

``truncatewords`` takes an optional second argument that specifies the
sequence of characters to be appended to the truncated string. By
default this is an ellipsis (…), but you can specify a different
sequence.

Input

.. code:: liquid

   {{ "Ground control to Major Tom." | truncatewords: 3, "--" }}

Output

.. code:: text

   Ground control to--

| 


No ellipsis
------------

You can avoid showing trailing characters by passing a blank string as
the second argument:

Input

.. code:: liquid

   {{ "Ground control to Major Tom." | truncatewords: 3, "" }}

Output

.. code:: text

   Ground control to
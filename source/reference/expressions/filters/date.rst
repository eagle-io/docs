.. _liquid-filters-date:

date
========

Converts a timestamp into another date format using `strftime`_ syntax. 

.. note:: 
    The :ref:`time <liquid-filters-time>` filter is recommended to be used instead of *date* it is more versatile and correctly applies timezone and DST to the formatted output.


Input

.. code:: liquid

   {{ article.published_at | date: "%a, %b %d, %y" }}

Output

.. code:: text

   Fri, Jul 17, 15

Input

.. code:: liquid

   {{ article.published_at | date: "%Y" }}

Output

.. code:: text

   2015

``date`` works on strings if they contain well-formatted dates:

Input

.. code:: liquid

   {{ "March 14, 2016" | date: "%b %d, %y" }}

Output

.. code:: text

   Mar 14, 16

To get the current time, pass the special word ``"now"`` (or
``"today"``) to ``date``:

Input

.. code:: liquid

   This page was last updated at {{ "now" | date: "%Y-%m-%d %H:%M" }}.

Output

.. code:: text

   This page was last updated at 2020-03-25 15:57.



.. _strftime: http://www.ruby-doc.org/core/Time.html#method-i-strftime

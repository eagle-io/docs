.. _expressions-filters:

Filters
==============

Liquid expressions implement business-logic independent filters that are
typically implemented in `shopify/liquid <https://shopify.github.io/liquid/>`_.
This section contains the specification and examples for all the filters implemented by Liquid.

There’s 40+ filters supported by Liquid. These filters can be
categorized into these groups:

+-----------------------------------+-----------------------------------+
| Categories                        | Filters                           |
+===================================+===================================+
| Math                              | plus, minus, modulo, times,       |
|                                   | floor, ceil, round, divided_by,   |
|                                   | abs, decimal                      |
+-----------------------------------+-----------------------------------+
| String                            | append, prepend, capitalize,      |
|                                   | upcase, downcase, strip, lstrip,  |
|                                   | rstrip, strip_newlines, split,    |
|                                   | replace, replace_first, remove,   |
|                                   | remove_first, truncate,           |
|                                   | truncatewords                     |
+-----------------------------------+-----------------------------------+
| HTML/URI                          | escape, escape_once, url_encode,  |
|                                   | url_decode, strip_html,           |
|                                   | newline_to_br, link_to            |
+-----------------------------------+-----------------------------------+
| Array                             | slice, map, sort, sort_natural,   |
|                                   | uniq, where, first, last, join,   |
|                                   | reverse                           |
+-----------------------------------+-----------------------------------+
| Time                              | time, time_plus, time_minus       |
+-----------------------------------+-----------------------------------+





.. toctree::
   :maxdepth: 1
   :hidden:

   abs
   append
   at_least
   at_most
   capitalize
   ceil
   compact
   concat
   date
   decimal
   default
   divided_by
   downcase
   escape
   escape_once
   first
   floor
   join
   json
   last
   link_to
   lstrip
   map
   minus
   modulo
   newline_to_br
   plus
   prepend
   remove
   remove_first
   replace
   replace_first
   reverse
   round
   rstrip
   size
   slice
   sort
   sort_natural
   split
   strip
   strip_html
   strip_newlines
   time
   time_minus
   time_plus
   times
   truncate
   truncatewords
   uniq
   upcase
   url_decode
   url_encode
   where





.. _ratings-format-csv:

Ratings CSV
============

:ref:`Rating parameters <rating-parameter>` support the **import** and **export** of rating configuration files from the user interface in a fixed CSV format as specified below.

The :ref:`HTTP API <api>` can additionally be used to read or update :ref:`rating parameter configuration <api-nodes-update-parameter-rating>` in `JSON <http://json.org>`_ format.

Example *ratings.csv* ::
    
    "2019-05-14T00:00:00.000Z","table",0:0,1:10,2:20
    "2020-09-25T13:30:00.000Z","table",0.1:15,0.7:32.44,1.22:122.91,1.5:200


.. only:: not latex

    |
    

Rating CSV line specification
------------------------------

Every line in the ratings.csv file defines a single rating. The file can contain multiple lines/ratings.
Columns (separated by comma ',') must use this strict format.

.. table::
    :class: table-fluid

    ======    ==============================    ==============================================
    Column    Example                           Description
    ======    ==============================    ==============================================
    **1**     "2020-09-25T13:30:00.000Z"        :ref:`ISO8601<time-format-iso8601>` start 
                                                timestamp this rating applies. 
                                                *Note the double quotes around the timestamp.*

    **2**     "table"                           Rating type. Currently only supporting rating 
                                                tables. 
                                                *Note the double quotes around the text.*

    **3+**    0.1:15                            Columns 3 onwards represent the rows in the 
                                                rating table. Each column must use the format
                                                **<input>:<value>** which contains an 
                                                *input* lookup value and *result* value 
                                                separated by ':'. 
                                                In the example shown *0.1* is the input 
                                                lookup value and *15* is the result.
    ======    ==============================    ==============================================

.. note:: Rating configuration files require the '.csv' file extension for import.

.. raw:: latex

    \newpage

Export
======

|icon-export| Historic export is accessible from the List View toolbar and Node context menus. You can export all data in the system via the *Base Node* context menu or use filters and the List View for precision selection.

The export process runs in the background so you can continue your work (including triggering additional exports) and you will be notified via *Messages* upon completion. Historic export data is always packaged into a compressed zip archive and available as a secure download. The exported files will automatically be removed from the server/messages after 12 hours.

Use the *Advanced* button to show/hide the advanced export options.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: historic_export.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: historic_export.jpg
        :scale: 100 %

Period
    Select the date range for the data to be exported.

Format
    Select the export format of the file(s):

    *Delimited Text* 

        Data is stored as rows of values separated with a specific :term:`delimiter` character.
Output
    Select how the parameter data should be grouped:

    *File per parameter*

        Every parameter will be exported into a separate file.

    *Interleaved*

        All parameters will be exported into a single file with values interleaved on timestamp.

    Optionally include header labels for each column.

Delimiter
    Specify the :term:`delimiter` character to use for separating the values.

Text qualifier
    Specify a character to use for surrounding text values.

Number format
    Specify how number parameters should format values:

    *Parameter format*
        Use the format configured in each parameter.

    *Full resolution*
        Will ouput the value with all available decimal places.

    *Custom*
        Specify a custom :ref:`format <node-configuration-parameter-general>` to be used.

Time format
    Specify the output format for timestamps. Select a preset format from the drop down list or specify a custom format using :ref:`time format tokens <time-format-tokens>`.

Timezone
    Select the :ref:`timezone <timezone>` to use for the exported data.

    Optionally ignore Daylight Savings Time if the data should use a fixed UTC offset.

Quality
    Specify how quality information should be exported:

    *Do not include*
        Quality is ignored.

    *Include with value*
        Quality code will be included in the same column as the value, separated with a Quality delimiter.

    *Include as separate value*
        Quality code will be included as a separate column in the file.

Quality delimiter
    Specify the :term:`delimiter` character to use for separating the value and quality code when *Include with value* is specified for the *Quality* export option.

| 

By default only the first 15 parameters will be selected for export. Use the *Parameter selection* panel accessible via the arrow on the right to refine your selection and change how the data should be exported, including any aggregate calculations to be applied.

.. raw:: latex

    \vspace{-10pt}

.. only:: not latex

    .. image:: ../historic_parameter_selection.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 

    .. image:: ../historic_parameter_selection.jpg
        :scale: 40 %

Display type
    *Value* displays the parameter values.
    
    *State* displays the state name associated with each value.
Aggregate
    Aggregates provide a method to resample raw data over a specified period. See the :ref:`list of available aggregates <historic-aggregates>` for full details. Select RAW to display the original raw data with no aggregation applied (Interval and Base time options will be hidden).
Interval
    Specify the data range that is included for each calculated value. Example *30M* will calculate a value for each 30 minute window of data.
Base time
    Base time is used to determine the start of the aggregate calculations. Example *D+9H* will start the calculations at 9am (start of current day + 9 hours). See :ref:`working with relative time <relative-time>` for full details.


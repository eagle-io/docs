.. meta::
   :description: Reports have the ability to generate PDFs and schedule for delivery via email

.. _reports-editor:

Using the report editor
========================
The report editor is used to build the report including the document properties, content, layout and styles.

.. contents:: Quick Links
    :depth: 1
    :local:

.. only:: not latex

    |


Navigation
-----------
The report editor consists of the :ref:`toolbar <reports-editor-toolbar>`, :ref:`page designer <reports-editor-designer>`, :ref:`detail panel <reports-editor-detailpanel>` and :ref:`main panel <reports-editor-mainpanel>`.


.. only:: not latex

    .. image:: reports_editor.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor.jpg

| 


.. _reports-editor-toolbar:

Editor toolbar
~~~~~~~~~~~~~~~

**Layout controls**

.. only:: not latex

    .. image:: reports_editor_toolbar_controls.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_toolbar_controls.jpg


The ``Grid`` control can be toggled to show or hide the designer grid. 
When the grid is enabled page elements will snap to grid when moving or resizing making it easier to position elements on the page. 

Use the ``Zoom +/-`` to magnify the report document.



| 


**Content elements**

.. only:: not latex

    .. image:: reports_editor_toolbar_elements.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_toolbar_elements.jpg


:ref:`Content elements <reports-editor-elements>` are added to the page designer to build the report. 
The available elements are covered in detail :ref:`below <reports-editor-elements>`.


| 


**Operations**

.. only:: not latex

    .. image:: reports_editor_toolbar_buttons.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_toolbar_buttons.jpg


``Preview`` will build the report and display the PDF. Click the ``x`` close button in the ``Report preview`` window to return to the :ref:`page designer <reports-editor-designer>`.

Reports are ``automatically saved`` as changes are made. 

Concurrent editing of a report by multiple clients is partially supported. Any modification will trigger the report to be reloaded in all browsers with the most recent changes.

Use the ``Undo`` and ``Redo`` buttons to revert changes during the editing session and hit ``Close`` to exit the report editor.

| 

.. _reports-editor-designer:

Page designer
~~~~~~~~~~~~~~~
The page designer is where the report content is assembled by adding :ref:`content elements <reports-editor-elements>` to the content, :ref:`header <reports-editor-document-header-footer>` and :ref:`footer <reports-editor-document-header-footer>` sections.

.. only:: not latex

    .. image:: reports_editor_designer.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_designer.jpg

| 


.. _reports-editor-detailpanel:

Detail panel
~~~~~~~~~~~~~
Selecting an item from the :ref:`main panel <reports-editor-mainpanel>` will display the associated configuration in the detail panel. 
Use this panel to modify the configuration of the document or the page elements and see the results in the :ref:`page designer <reports-editor-designer>`.

.. only:: not latex

    .. image:: reports_editor_detailpanel_sm.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_detailpanel_sm.jpg

| 


.. _reports-editor-mainpanel:

Main panel
~~~~~~~~~~~~~
The main panel allows for easy selection of content elements listed under the ``HEADER``, ``CONTENT`` and ``FOOTER`` menus.
:ref:`Tags <reports-editor-tags>`, :ref:`Styles <reports-editor-styles>` and :ref:`Document properties <reports-editor-document>` can also be accessed from this panel.

.. only:: not latex

    .. image:: reports_editor_mainpanel.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_mainpanel.jpg

| 


.. _reports-editor-document:

Page basics
-----------
The ``DOCUMENT PROPERTIES`` menu contains general page and display options.

.. only:: not latex

    .. image:: reports_editor_detailpanel.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_detailpanel.jpg

| 

Page size and document height
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The ``Page format`` and ``Orientation`` options specify the output page settings for PDF documents. Typically a report would use *DIN A4*. 
Select *Own dimensions* to specify a custom *width* and *height*.

Increasing the ``Content height`` value will adjust the available vertical space in the report layout so that more elements can be added. 

Content will automatically span over multiple pages as necessary. Alternatively insert a :ref:`page break <reports-editor-elements-pagebreak>` element to force content to flow to a new page. 

| 

.. _reports-editor-document-header-footer:

Headers, footers and page number
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Headers and footers are special content sections at the top and bottom of the page respectively. 
These sections are automatically included on every page by default. 
Use the ``Header`` and ``Footer`` toggle switches to enable or disable these sections. 
The ``Display`` option can be set to *Always* or *Do not display on first page*.

To include the **Page number** and **Page count** at the top of every page, create a new ``Text`` element and drag it into the document ``Header``. 
Set the text of the element to use the ``page_number`` and ``page_count`` :ref:`tags <reports-editor-tags>` as required. 
The text ``Page {{page_number}} of {{page_count}}`` will output similar to ``Page 1 of 5``.

.. only:: not latex

    .. image:: reports_editor_designer_page_number.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_designer_page_number.jpg

| 


.. _reports-editor-elements:

Content elements
----------------
Click or drag-drop an element icon from the :ref:`editor toolbar <reports-editor-toolbar>` to insert it into the :ref:`page designer <reports-editor-designer>`.

.. only:: not latex

    .. image:: reports_editor_toolbar_elements.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_toolbar_elements.jpg

| 


Types of elements
~~~~~~~~~~~~~~~~~
Elements include :ref:`text <reports-editor-elements-text>`, :ref:`horizontal line <reports-editor-elements-line>`, :ref:`image <reports-editor-elements-image>`, :ref:`bar code <reports-editor-elements-barcode>`, :ref:`table <reports-editor-elements-table>`, :ref:`frame <reports-editor-elements-frame>` and :ref:`page break <reports-editor-elements-pagebreak>`.

| 

.. _reports-editor-elements-text:

Text
````````
Text elements are used to add text to your report. This includes headings, labels and paragraphs.

.. only:: not latex

    .. image:: reports_editor_element_text.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_element_text.jpg

| 

.. _reports-editor-elements-line:

Horizontal line
````````````````
Insert a horizontal line and adjust width and height as required.

.. only:: not latex

    .. image:: reports_editor_element_line.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_element_line.jpg

| 

.. _reports-editor-elements-image:

Image
````````
Add images to your report. 
Select ``Choose file`` from the :ref:`detail panel <reports-editor-detailpanel>` to upload a local **JPG** or **PNG** file from your device.  

Alternatively specify a **URL** or :ref:`tag <reports-editor-tags>` as the image ``Source``. 
**Charts** and **attachments** from the workspaces tree can be added to the report via :ref:`tags <reports-editor-tags>`.

.. only:: not latex

    .. image:: reports_editor_element_image.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_element_image.jpg

| 

.. _reports-editor-elements-barcode:

Bar code
``````````
Insert **CODE 128** bar codes into your report. Use the ``Text`` field to enter the alphanumeric characters for the bar code or use :ref:`tags <reports-editor-tags>` for dynamic content.

.. only:: not latex

    .. image:: reports_editor_element_barcode.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_element_barcode.jpg


| 

.. _reports-editor-elements-table:

Table
````````
Tables make it easy to align related content. 

.. only:: not latex

    .. image:: reports_editor_element_table_selected.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_element_table_selected.jpg

Drag the table around to position it within the report. 
To resize or configure the table you must select it and edit its settings from the :ref:`main panel <reports-editor-mainpanel>`. 
Set the required number of ``columns``, ``content rows`` and toggle header and footer rows as required.

.. only:: not latex

    .. image:: reports_editor_element_table_details.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_element_table_details.jpg

| 

Clicking the `Table` item from the :ref:`main panel <reports-editor-mainpanel>` will expand to show individual cells grouped by header, content and footer.
Select an individual cell from this panel to set its ``Text`` or column ``Width`` in pixels.

.. only:: not latex

    .. image:: reports_editor_element_table_cell_details.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_element_table_cell_details.jpg


As you make changes from the :ref:`main panel <reports-editor-mainpanel>`, the designer will update the table accordingly.

.. only:: not latex

    .. image:: reports_editor_element_table_cell_selected.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_element_table_cell_selected.jpg

| 



.. note:: You can add current parameter data values to individual cells using :ref:`tags <reports-editor-tags>` however historic data in a table is not yet supported. 



| 

.. _reports-editor-elements-frame:

Frame
````````
Use frames to group other content elements or add backgrounds and borders to sections of your report. 
Drag elements into the frame to group them, then simply position the frame on the page as necessary. 
Select the Frame from the :ref:`main panel <reports-editor-mainpanel>` to modify its settings or select its grouped elements.

.. only:: not latex

    .. image:: reports_editor_element_frame.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_element_frame.jpg

| 

.. _reports-editor-elements-pagebreak:

Page break
```````````
Use page breaks to force content appearing below the break to flow to a new page. 

.. only:: not latex

    .. image:: reports_editor_element_page_break.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_element_page_break.jpg

| 


Create and delete
~~~~~~~~~~~~~~~~~~~~~~~~~~
Click or drag-drop an element icon from the :ref:`editor toolbar <reports-editor-toolbar>` to insert it into the :ref:`page designer <reports-editor-designer>`.

An element can be removed by clicking the `x` delete button next to the element in the :ref:`main panel <reports-editor-mainpanel>` or selecting the element and pressing the ``DELETE`` key. 

``Copy and Paste`` elements using ``CTRL+C`` and ``CTRL+V`` shortcut keys to quickly duplicate selected elements. 

| 


Select, resize and align
~~~~~~~~~~~~~~~~~~~~~~~~~~
Select the element by either clicking directly on the element's bounding box in the :ref:`page designer <reports-editor-designer>`, click and drag a selection box around elements, or clicking the element in the :ref:`main panel <reports-editor-mainpanel>`.
Additional elements can be added to the selection by holding the ``SHIFT`` key. 

Drag the element(s) around the :ref:`page designer <reports-editor-designer>` to **reposition** or use the ``Arrow`` keys for small adjustments. 
Click and drag the bounding box handles to **resize** an element.

**Note:** elements will automatically snap to the designer grid during reposition and resize operations but you can temporarily disable this 
behaviour by :ref:`toggling the grid <reports-editor-toolbar>` off. 

.. only:: not latex

    .. image:: reports_editor_toolbar_align.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_toolbar_align.jpg

When multiple elements are selected, the **alignment toolbar** is available to quickly align elements together on the page.

| 


Element properties
~~~~~~~~~~~~~~~~~~~
When an element is selected its properties, display, style and conditional style options are displayed in the :ref:`detail panel <reports-editor-detailpanel>`. 

The general properties section includes the element content, position and size.

``DISPLAY`` section options customise the behaviour of the element in the PDF including preventing the content from being split over multiple pages, adding hyperlinks, etc.

``STYLE`` allows a predefined :ref:`style <reports-editor-styles>` to be applied or customise the appearance of elements individually.

``CONDITIONAL STYLE`` allows a different style (predefined or individually applied) to be set when a user-defined ``Condition`` is met. 
An example of a **conditional statement** is ``11 > 10``, or using :ref:`tags <reports-editor-tags>` ``{{Parameter.currentValue}} > 10``. 

| 




.. _reports-editor-styles:

Styles
---------------
The ``+`` add style button in the :ref:`main panel <reports-editor-mainpanel>` adds new predefined styles to the report.

Headings, paragraphs and other content elements generally share similar styles. 
You can set the styles on every element individually but this can be tedious.

Its more efficient to predefine a set of styles and then simply select the ``Style`` name on each element you want to apply it to. 

.. only:: not latex

    .. image:: reports_editor_styles.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_styles.jpg

| 


.. _reports-editor-tags:

Tags
------

Tags are the mechanism in which dynamic attributes related to nodes in the workspaces tree can be inserted into the report. 
This can include tags such as parameter value text, location coordinates, chart images, and many more.

Tags are available for all nodes that has been linked to the report.

| 


Drag & drop from workspaces tree
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The easiest way to link a node and insert a default tag is to drag and drop the node from the workspaces tree on to the :ref:`page designer <reports-editor-designer>`. 

.. only:: not latex

    .. image:: reports_editor_tags_dragdrop.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_tags_dragdrop.jpg


.. note:: Only nodes within the same workspace (or template) as the report can be linked.

| 


Rename or remove links
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
You can remove, modify or rename links from the :ref:`report properties <node-configuration-report>`. 
If the ``Name`` of the link is changed you will need to use the new name when assigning tags in the report.

.. only:: not latex

    .. image:: reports_editor_tags_links.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_tags_links.jpg

| 


Show available attributes
~~~~~~~~~~~~~~~~~~~~~~~~~~
Click on the ``>`` expand arrow next to a tag in the :ref:`main panel <reports-editor-mainpanel>` to show its available attributes. 

.. only:: not latex

    .. image:: reports_editor_tags_attributes.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_tags_attributes.jpg

| 


Insert tags in an element
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Use the content field of an element (eg. ``Text`` or ``Source``) to either manually enter a tag or click the ``...`` tag list button to select from a list of available tags.
Tags are always surrounded by double curly braces ``{{`` and ``}}``. eg. ``{{Parameter.currentValue}}``

When the report is generated the tags are replaced with the corresponding data. Multiple tags can be inserted in a single element and are rendered inline. 
eg. ``The value is {{Parameter.currentValue}} on {{Parameter.currentTime | time: "Do MMMM"}}`` may be rendered in the PDF as ``The value is 7.12 on 10th July``

.. only:: not latex

    .. image:: reports_editor_tags_insert.jpg
        :scale: 50 %

    | 

.. only:: latex
    
    | 
    
    .. image:: reports_editor_tags_insert.jpg

| 


Expressions
~~~~~~~~~~~~

Use :ref:`expressions <expressions>` directly inside report elements to control the output of the content and its formatting. 

Common scenarios
```````````````` 

- Apply the :ref:`time <liquid-filters-time>` filter to format a timestamp: ``{{report_time | time}}`` or ``{{report_time | time: "DD MMMM YYYY"}}``

- :ref:`Round <liquid-filters-round>` a number to 2 decimal places: ``{{Parameter.currentValue | round: 2}}``

- Set a :ref:`default <liquid-filters-default>` to insert when no value exists: ``{{Parameter.currentValue | default: 0}}``

- :ref:`Truncate <liquid-filters-truncate>` long text to a maximum number of characters: ``{{Parameter.currentStateName | truncate: 15}}``

- Use expression :ref:`if / else <liquid-tags-if>` tags to display alternate content based on a value

.. code:: liquid

   {% if Parameter.currentValue > 10 %}
     Value is above expected range
   {% else %}
     Value is within expected range
   {% endif %}


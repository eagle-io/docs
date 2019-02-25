.. meta::
   :description: Templates are special container Nodes that allow a hierarchy of configuration to be defined once and replicated to any number of Instances. This reduces configuration time and ensures consistency for large deployments while allowing individual attributes to be customised.

.. _node-configuration-template:

Template
=========
|icon-template| Templates are special container Nodes that allow a hierarchy of configuration to be defined once and replicated to any number of :ref:`Instances <node-configuration-template-instances>`. This reduces configuration time and ensures consistency for large deployments, while allowing individual attributes to be customised.  


.. only:: not latex

    .. image:: template-instances.jpg
        :scale: 50 %
    | 

.. only:: latex
    
    | 

    .. image:: template-instances.jpg
        :scale: 100 %


The *Templates* Node always appears at the top of the Workspaces Tree and is identified by the puzzle icon. A new Template begins as a Group or Location, and is then populated with any number of Nodes. Changes to an existing Template (or Node therein) will be immediately reflected in all Instances referring to that Template. These changes can include the addition or removal of Nodes, or any configuration change within the Template.

.. only:: not latex

    .. image:: template-create.jpg
        :scale: 50 %
    | 

.. only:: latex
    
    | 

    .. image:: template-create.jpg
        :scale: 100 %

.. warning:: 
    Removing a Template will also remove all Instances referring to that Template.

|

.. _node-configuration-template-instances:

Instances
~~~~~~~~~

Instances can be created in any of your Workspaces and must refer to one of the Templates you have already created. Each Instance may be renamed but all additional configuration items will be locked to the Template.

.. only:: not latex

    .. image:: instance-create.jpg
        :scale: 50 %
    | 

.. only:: latex
    
    | 

    .. image:: instance-create.jpg
        :scale: 100 %

.. note::
    An Instance can only be created directly under a Workspace or Group.

By default, Instance configuration attributes are locked to the Template and cannot be modified. In this way, locked attributes ensure consistency across all Instances that refer to the same Template.

.. only:: not latex

    .. image:: locked-attribute.jpg
        :scale: 50 %
    | 

.. only:: latex
    
    | 

    .. image:: locked-attribute.jpg
        :scale: 100 %

|

.. _node-configuration-template-overrides:

Overrides
~~~~~~~~~

Overrides allow you to select attributes in a Template that may be individually customised in the corresponding instance Nodes. Each type of Template Node will expose a different list of available attributes. Any attributes that have not been selected as overrides in the Template will be shown as locked in the Instance configuration, indicating that they cannot be changed.

.. only:: not latex

    .. image:: overrides.jpg
        :scale: 50 %
    | 

.. only:: latex
    
    | 

    .. image:: overrides.jpg
        :scale: 100 %

Once an override has been added in the Template configuration, the attribute will become modifiable in every Instance.

.. only:: not latex

    .. image:: unlocked-attribute.jpg
        :scale: 50 %
    | 

.. only:: latex
    
    | 

    .. image:: unlocked-attribute.jpg
        :scale: 100 %

.. warning:: 
    Removing an override in a Template will reset that attribute in the corresponding Instance Nodes back to the templated value.






.. only:: not latex

    |

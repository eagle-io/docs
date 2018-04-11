.. _node-configuration-template:

Template
=========
|icon-template| Templates are special container Nodes that are used to define consistent structure and configuration. They can be referenced as instances in other Workspaces to speed up automated configuration for large deployments.  

.. only:: not latex

    |


The *Templates* Node
~~~~~~~~~~~~~~~~~~~
The *Templates* Node always appears at the top of the Workspace tree and is identified by the puzzle icon. 


Creating Templates
~~~~~~~~~~~~~~~~~~
You can create Group or Location Nodes within the *Templates* Node; each Group or Location you create becomes one Template which can then be referenced as an Instance in any of your Workspaces.


.. _node-configuration-template-instances:

Instances
~~~~~~~~~

Instances can be created in your Workspaces; each Instance must reference one of the Templates you have already created. Any changes to the Template being referenced will be reflected by the Instance. These changes can include the addition or removal of Nodes within the Template, or any change to the configuration of any Node within the template.

.. _node-configuration-template-overrides:

Overrides
~~~~~~~~~

Overrides allow you to select the attributes in a Template that can be individually customised in the corresponding instance Nodes. Each type of Template Node will expose a different list of available attributes. Any attributes that have **not** been selected as overrides in the Template will be shown as greyed-out in the Instance configuration, indicating that they cannot be changed.

.. warning:: 
    Removing an override in a Template will reset that attribute in the corresponding Instance Nodes back to the templated value.






.. only:: not latex

    |

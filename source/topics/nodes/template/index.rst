.. _node-configuration-template:

Template
=========
|icon-template| A Template is a Group or Location in a special "Templates" Workspace. Each Template can be cloned as instances in other Workspaces to speed up automated configuration for large deployments.  

.. only:: not latex

    |


Creating the Templates Workspace
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Create the Templates Workspace by first creating a new empty Workspace named "Templates". Then refresh your browser; the Workspace icon will have changed to a Template icon. 


Creating Templates
~~~~~~~~~~~~~~~~~~
Once the Templates Workspace is active, you can create Template Nodes; each Template Node must be either a Group or a Location.


.. _node-configuration-template-instances:

Instances
~~~~~~~~~~

Instances are any Group or Location, created in a different Workspace, that reference one of the Templates you have already created. Any changes to the Template being referenced will be duplicated by the Instance. These changes can include the addition or removal of Nodes within the Template, or any change to the configuration of any Node within the template.


.. only:: not latex

    |

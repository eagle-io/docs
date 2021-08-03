Integrations
============

|icon-integration| Integrations provide extended functionality by connecting to apps from third party providers.

.. only:: not latex

    |


S3 Backup 
---------


The S3 Backup integration enables data files received by eagle.io to be backed up to a specific S3 bucket in your own Amazon Web Services account. 

.. note:: 
    This feature is a paid addition to Standard accounts, and is included with Premium accounts. Please contact sales@eagle.io to learn more about premium features.

To use this integration, first create a new S3 bucket in your AWS account to be used for the specific purpose of eagle.io backups. `Create an IAM user <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html>`_, and allocate an `API access key <https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys>`_ to this user. The access key will consist of two parts: an access key ID, and a secret access key. Finally, `assign write permissions <https://docs.aws.amazon.com/AmazonS3/latest/user-guide/set-bucket-permissions.html>`_ for this user to the bucket.

With this information, you can then enable the integration and enter the three required settings:


1. Bucket name
2. Access key ID
3. Secret access key

You can also enter an optional file name prefix.


.. only:: latex

    .. image:: s3_backup.jpg
        :scale: 50 %

    |

.. only:: not latex

    .. image:: s3_backup.jpg

    | 


.. raw:: latex

    \newpage


Integrations
============

|icon-integration| Integrations provide extended functionality by connecting to apps from third party providers.

.. only:: not latex

    |


Intercom 
--------


`Intercom <http://www.intercom.com>`_ is a third-pary provider which offers a range of products for sales, marketing and support to connect with customers

The Intercom intergration for eagle.io allows you to provide support to your users via a custom chat messenger, or "bubble", embedded in eagle.io. It also provides insights into user activity on the platform.

.. note:: 
    Your custom Intercom chat bubble will only display on your custom eagle.io domain.

To connect with Intercom, you need to provide eagle.io with your Intercom **App ID** and **Identity Verification Secret**. You also need to have enabled Identity Verification for your Intercom account.

Your **App ID** is found in the URL when logged into your Intercom account:


.. only:: latex

    .. image:: intercom_app_id_url.jpg
        :scale: 50 %

    |

.. only:: not latex

	.. image:: intercom_app_id_url.jpg

	| 



Your **Identity Verification Secret** is found in the Identity Verification section of your Intercom account settings:




.. only:: latex

    .. image:: intercom_identity_verification_secret.jpg
        :scale: 50 %

    |

.. only:: not latex

    .. image:: intercom_identity_verification_secret.jpg

    | 



Once enabled, your custom Intercom bubble is only visible to non admin users who access eagle.io from your custom domain. Admin users will still see the standard eagle.io Intercom bubble.

To display your custom Intercom bubble to admin users as well, select your account name in the administrator support handler settings as shown below:



.. only:: latex

    .. image:: support_handler.jpg
        :scale: 50 %

    |

.. only:: not latex

    .. image:: support_handler.jpg

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


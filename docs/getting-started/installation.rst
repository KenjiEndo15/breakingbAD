Installation
============
To make the laboratory work smoothly, we need to install the necessary dependencies described in this section.

.. caution::

    The laboratory was made using Ubuntu 22.04.1 LTS. Other distributions have not been tested.

Requirements
------------
The following requirements were taken from my environment. I propose specific versions for the tools as I haven't had the time to experiment with different versions.

Please feel free to create a new issue if any installation step doesn't work for you.

VirtualBox
~~~~~~~~~~
.. code-block::

    sudo apt-get install virtualbox=6.1

Vagrant
~~~~~~~
.. code-block::
    
    sudo apt-get install vagrant=2.3.0

Python & Ansible
~~~~~~~~~~~~~~~~

.. code-block::

    # The python directory will store virtual environment data
    cd python

    # Creating a virtual environment
    python3 -m venv venv .

    # Activating it
    source bin/source
    
    # Installing the required Python dependencies (ansible-core, pywinrm...)
    python3 -m pip install -r requirements.txt

    # Switching to the Ansible directory
    cd ansible

    # Installing the required Ansible dependencies
    ansible-galaxy install -r requirements.yml

.. tip::

    To deactivate the virtual environment, just type in the terminal: ``deactivate``.

What's next?
------------
To launch the laboratory, see :doc:`Launch </getting-started/launch>`.
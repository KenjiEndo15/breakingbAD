Installation
============
To make the laboratory work smoothly, 
we need to install the dependencies described in this section.

.. caution::

    The laboratory was made using Ubuntu 22.04.1 LTS. Other distributions have not been tested.

Requirements
------------
The following requirements were taken from my environment.
I propose specific versions for the tools as I haven't had the time to experiment with different versions.

Please feel free to create a new issue if any installation step doesn't work for you.

VirtualBox
~~~~~~~~~~
To install a specific version, you need to add VirtualBox repository.
.. code-block::

    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add –
    echo "deb [arch=amd64] http://virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

    sudo apt-get update

Installing VirtualBox in version 6.1.

.. code-block::

    sudo apt-get install virtualbox=6.1

Vagrant
~~~~~~~
To install a specific version, you need to add Vagrant repository.
.. code-block::
    
    wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
    sudo apt-get install ./vagrant_2.3.0-1_amd64.deb
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
    
    sudo apt update

Installing Vagrant in version 2.3.0.

.. code-block::

    sudo apt install vagrant=2.3.0

Installing Vagrant plugins.

.. code-block::

    vagrant plugin install winrm /
    vagrant plugin install winrm-fs /
    vagrant plugin install winrm-elevated

Python & Ansible
~~~~~~~~~~~~~~~~

Python is used in version 3.10.6.

.. code-block::

    # The python directory will store virtual environment data
    cd python

    # Creating a virtual environment
    # sudo apt install python3.10-venv -y (if needed)
    python3 -m venv venv .

    # Activating it
    source bin/source
    
    # Installing the required Python dependencies (ansible-core, pywinrm...)
    python3 -m pip install -r requirements.txt

.. code-block::

    # Ansible directory (with the virtual environment activated)
    cd ansible

    # Installing the required Ansible dependencies
    ansible-galaxy install -r requirements.yml

.. tip::

    To deactivate the virtual environment, just type in the terminal: ``deactivate``.
.. breakingbAD documentation master file, created by
   sphinx-quickstart on Sun Dec 25 14:02:27 2022.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

.. image:: /assests/banner.png

.. raw:: html

   <hr>

About breakingbAD
=================
**breakingbAD** is a platform for cybersecurity enthusiasts
to conduct vulnerability research in an easy and fast way.
The current laboratory is Active Directory oriented.

`breakingbAD GitHub repository`_.

Motivation
----------
As a pentester, a handy environment for testing purposes is key.
I decided to dive into the creation of a laboratory in a similar
way as `GOAD (Game of Active Directory)`_ was made.
Since I wanted to customize as much as possible what I wanted to test,
I decided to create breakingbAD for that matter.

Main credits
------------
This project wouldn't exist without `GOAD (Game of Active Directory)`_.
My laboratory is inspired by it (credits to `Mayfly`_) and
I strongly recommend giving it a try.

How does it work?
=================

.. image:: /assests/base_build-vulnerabilities.png

Briefly, we use Vagrant to create **raw** Windows virtual machines without configurations **[1]**. 

We then use Ansible to inject minimal configurations, this is what I call a **base build** **[2]**.
The main goal here is to configure them to have the necessary
dependencies (ADDS, ADCS...) for the vulnerabilities to be added smoothly.

Once the **base build** is set up, machines are ready to receive more important configurations (with Ansible again) **[3]**.
We could for example change the keyboard layout to French of a virtual machine.
We could also add vulnerabilities based on their ID, **either one by one or all at once**.

This idea of having different steps was motivated by the need to have a
platform that is ready without having to wait for long.



As for the vulnerabilities, for each of them, you'll have **at least 2 possibilities**.

* **Enable**: enable the vulnerability (installing or adding what it needs to work).
* **Disable**: disable the vulnerability (uninstalling or removing what it needs to not work anymore).
* **Trigger**: trigger a reaction for the vulnerability to manifest itself (for example a network request using a protocol like IPv6).

What are the tools used?
========================
The laboratory make use of the following tools:

* `Python`_
* `Vagrant`_
* `Ansible`_
* `VirtualBox`_

.. Hyperlinks
.. _`breakingbAD GitHub repository`: https://github.com/KenjiEndo15/breakingbAD
.. _`GOAD (Game of Active Directory)`: https://github.com/Orange-Cyberdefense/GOAD
.. _`Mayfly`: https://github.com/Mayfly277
.. _`ADDS`: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/get-started/virtual-dc/active-directory-domain-services-overview
.. _`ADCS`: https://social.technet.microsoft.com/wiki/contents/articles/1137.active-directory-certificate-services-ad-cs-introduction.aspx
.. _`Python`: https://www.python.org/
.. _`Vagrant`: https://www.vagrantup.com/
.. _`Ansible`: https://www.ansible.com/
.. _`VirtualBox`: https://www.virtualbox.org/

.. Tables of content
.. toctree::
   :maxdepth: 2
   :hidden:
   :caption: GETTING STARTED

   getting-started/installation
   getting-started/launch

.. toctree::
   :maxdepth: 2
   :hidden:
   :caption: VULNERABILITIES

   vulnerabilities/introduction
   vulnerabilities/id01
   vulnerabilities/id02
   vulnerabilities/id03
   vulnerabilities/id04
   vulnerabilities/id05
   vulnerabilities/id06

.. toctree::
   :maxdepth: 2
   :hidden:
   :caption: LABORATORY

   laboratory/content
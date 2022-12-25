![](./.github/banner.png)

<p align="center">
  I'm the one who pwns!
  <br>
  <a href="https://twitter.com/intent/follow?screen_name=KenjiEndo15" title="Follow"><img src="https://img.shields.io/twitter/follow/KenjiEndo15?label=KenjiEndo&style=social"></a>
  <br>
</p>

## About breakingbAD
breakingbAD is a plateform for cybersecurity enthusiasts to conduct vulnerability research in an easy and fast way. The current laboratory is Active Directory oriented.

## Main credits
This project wouldn't exist without [GOAD (Game of Active Directory)](https://github.com/Orange-Cyberdefense/GOAD). My laboratory is heavily inspired by it (credits to [Mayfly](https://github.com/Mayfly277)) and I strongly recommend giving it a try.

## Features
### Vulnerabilities
The laboratory contains dangerous AD configurations as well as Windows vulnerabilities (related to patching).

To better name a vulnerability related to dangerous AD configurations, identifiers are used.

#### Dangerous configurations
- ID = 01 | ESC8
- ID = 02 | NTLMv1
- ID = 03 | WebClient
- ID = 04 | GPO
- ID = 05 | IPv6
- ID = 06 | LLMNR, NBT-NS & mDNS

#### Patch-related vulnerabilities
- sAMAccountName spoofing
- ZeroLogon
- Certifried

### Machines
Currently, the 3 machines used are Windows Server 2019. The images are taken from [StefanScherer in](https://app.vagrantup.com/StefanScherer/boxes/windows_2019/versions/2019.05.15) version 2019.05.22.

![image](https://user-images.githubusercontent.com/109678331/209454074-4e1ddfb5-0087-4dee-9591-0cec5cda053c.png)

## Getting started
See [Read the Docs](https://breakingbad.readthedocs.io/en/latest/index.html)

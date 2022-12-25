![](./.github/banner.png)

<p align="center">
  I'm the one who pwns!
  <br>
  <a href="https://twitter.com/intent/follow?screen_name=KenjiEndo15" title="Follow"><img src="https://img.shields.io/twitter/follow/KenjiEndo15?label=KenjiEndo&style=social"></a>
  <br>
</p>

## About breakingbAD
breakingbAD is a plateform for cybersecurity enthusiasts to conduct vulnerability research, and exploitation easily and fastly. The current laboratory is Active Directory oriented.

## Main credits
This project wouldn't exist without [GOAD (Game of Active Directory)](https://github.com/Orange-Cyberdefense/GOAD). My laboratory is heavily inspired by it (credits to [Mayfly & co](https://github.com/Mayfly277)), and I strongly recommend giving it a try.

## Features
### Vulnerabilities
The laboratory contains dangerous AD configurations as well as Windows vulnerabilities (related to patching).

To better name a vulnerability related to dangerous AD configurations, identifiers are used.

#### Dangerous configurations
- [X] ID = 01 | ESC8 (see ID01)
- [X] ID = 02 | NTLMv1 (see ID02)
- [X] ID = 03 | WebClient (see ID03)
- [X] ID = 04 | GPO abuse (see ID04)
- [X] ID = 05 | IPv6 poisoning (see ID05)
- [X] ID = 06 | LLMNR, NBT-NS & mDNS poisoning (see ID06)

#### Patch-related vulnerabilities
- [X] sAMAccountName spoofing
- [X] ZeroLogon
- [X] Certifried

### Machines
Currently, the 3 machines used are Windows Server 2019. The images are taken from [StefanScherer in version 2019.05.22](https://app.vagrantup.com/StefanScherer/boxes/windows_2019/versions/2019.05.15).

![image](https://user-images.githubusercontent.com/109678331/209454074-4e1ddfb5-0087-4dee-9591-0cec5cda053c.png)

## Content
### Installation
See [installation](https://github.com/KenjiEndo15/breakingbAD/wiki/Installation).

### Launching the laboratory
See [launch](https://github.com/KenjiEndo15/breakingbAD/wiki/Launch).

### Understanding and running the vulnerabilities
See [vulnerabilities](https://github.com/KenjiEndo15/breakingbAD/wiki/Vulnerabilities).

## Documentation
See the [Wiki](https://github.com/KenjiEndo15/breakingbAD/wiki) (currently in the making) for full documentation, examples, tips, etc.

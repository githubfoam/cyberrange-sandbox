# cyberrange-sandbox


[![kali cyberrange CI workflow](https://github.com/githubfoam/cyberrange-sandbox/actions/workflows/kali-wf.yml/badge.svg?branch=master)](https://github.com/githubfoam/cyberrange-sandbox/actions/workflows/kali-wf.yml)  

~~~~
      Name                    Command                 State                       Ports                  
---------------------------------------------------------------------------------------------------------
kali               /bin/bash                        Up                                                   
metasploitable     /bin/sh                          Up                                                   
owasp-juice-shop   docker-entrypoint.sh npm start   Up           0.0.0.0:3000->3000/tcp,:::3000->3000/tcp
parrotsec-core     /bin/sh -c bash $@               Up                                                   
postgresql         docker-entrypoint.sh postgres    Restarting                                           
webgoat            /bin/sh -c /bin/bash /home ...   Up           8080/tcp, 9090/tcp   
~~~~
[![parrotsec cyberrange CI workflow](https://github.com/githubfoam/cyberrange-sandbox/actions/workflows/parrotsec-wf.yml/badge.svg?branch=master)](https://github.com/githubfoam/cyberrange-sandbox/actions/workflows/parrotsec-wf.yml)  
~~~~
      Name                    Command                 State                       Ports                  
---------------------------------------------------------------------------------------------------------
        Name                      Command                State                      Ports                  
-----------------------------------------------------------------------------------------------------------
kali                   /bin/bash                        Up                                                 
metasploitable         /bin/sh                          Up                                                 
owasp-juice-shop       docker-entrypoint.sh npm start   Up         0.0.0.0:3000->3000/tcp,:::3000->3000/tcp
parrotsec-beef         /bin/sh -c /init.sh $@           Up                                                 
parrotsec-bettercap    /bin/sh -c bettercap $@          Up                                                 
parrotsec-core         /bin/sh -c bash $@ /bin/bash     Up                                                 
parrotsec-metasploit   /bin/sh -c /msfconsole-sta ...   Up                                                 
parrotsec-nmap         /bin/sh -c nmap $@               Exit 255                                           
parrotsec-security     /bin/sh -c bash $@               Up                                                 
parrotsec-set          /bin/sh -c setoolkit $@          Up                                                 
parrotsec-sqlmap       /bin/sh -c sqlmap $@             Exit 2                                             
postgresql             docker-entrypoint.sh postgres    Up         0.0.0.0:5432->5432/tcp,:::5432->5432/tcp
webgoat                /bin/sh -c /bin/bash /home ...   Up         8080/tcp, 9090/tcp                       
~~~~

vulnerable web-application 
~~~~

https://github.com/OWASP/OWASP-VWAD

Damn Vulnerable Web Application (PHP/MySQL)
https://github.com/ethicalhack3r/DVWA
http://www.dvwa.co.uk/

Metasploitable3 is a VM that is built from the ground up with a large amount of security vulnerabilities. 
https://github.com/rapid7/metasploitable3

Mutillidae (PHP)
OWASP Mutillidae II is a free, open source, deliberately vulnerable web-application providing a target for web-security enthusiast. Mutillidae can be installed on Linux and Windows using LAMP, WAMP, and XAMMP. It is pre-installed on SamuraiWTF and OWASP BWA.
https://github.com/webpwnized/mutillidae

NodeGoat (Node)
The OWASP NodeGoat project provides an environment to learn how OWASP Top 10 security risks apply to web applications developed using Node.js and how to effectively address them.
https://github.com/OWASP/NodeGoat

WebGoat (Web App)
WebGoat.Net (.NET)
WebGoatPHP (PHP)
https://owasp.org/www-project-webgoat/
WebGoat is a deliberately insecure application 
https://github.com/WebGoat/WebGoat
https://github.com/jerryhoff/WebGoat.NET

OWASP Juice Shop (NodeJS/Angular)
OWASP Juice Shop: Probably the most modern and sophisticated insecure web application.
https://github.com/bkimminich/juice-shop

RailsGoat (Rails)
A vulnerable version of Rails that follows the OWASP Top 10.
https://github.com/OWASP/railsgoat

~~~~
vulnerable VMs
~~~~
Windows virtual machines for Malware Analysis and Software Reverse Engineering
https://github.com/f0wl/MalwareLab_VM-Setup

This project is not a vulnerable application. It is a framework designed for quickly configuring training virtual machines with tools and vulnerable application targets. For example, an instructor could use SamuraiWTF to easily set up a classroom virtual machine image containing OWASP ZAP and OWASP Juice Shop, and then distribute it to each student.
https://github.com/SamuraiWTF/samuraiwtf

Linux toolkit for reverse-engineering and analyzing malicious software
https://remnux.org/

Tsurugi Linux is a DFIR open source project that is and will be totally free, independent, without involving any commercial brand
https://tsurugi-linux.org/
~~~~
Docker
~~~~
This repository contains Dockerfiles for building Docker images of popular malware analysis tools, which are distributed through the REMnux repository on Docker Hub
https://github.com/REMnux/docker
~~~~
~~~~
HackThisSite.org is a free, safe and legal training ground for hackers to test and expand their ethical hacking skills with challenges, CTFs,
https://hackthissite.org/

Virtual Machines
https://www.vulnhub.com/

Metasploit helps security teams do more than just verify vulnerabilities, manage security assessments, and improve security awareness
https://github.com/rapid7/metasploit-framework

This codelab shows how web application vulnerabilities can be exploited and how to defend against these attacks. The best way to learn things is by doing, so you'll get a chance to do some real penetration testing, actually exploiting a real application
https://google-gruyere.appspot.com/

~~~~
AWS/GCP/Azure/Alibaba/IBM/OpenStack
~~~~
Collection of scripts and resources for DevSecOps and Automated Incident Response Security
https://github.com/awslabs/aws-security-automation

The tool to help you discover resources in the cloud environment 
https://github.com/Cloud-Architects/cloudiscovery

Read your tfstate or HCL to generate a graph specific for each provider, showing only the resources that are most important/relevant. 
https://github.com/cycloidio/inframap

cloudquery transforms your cloud infrastructure into SQL or Graph database for easy monitoring, governance and security
https://github.com/cloudquery/cloudquery

A very vulnerable serverless application in AWS Lambda 
https://github.com/wickett/lambhack
~~~~

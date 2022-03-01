# cyberrange-sandbox

~~~~
git clone https://github.com/githubfoam/cyberrange-kali-githubactions.git && cd cyber*
sudo docker-compose --file dockerfiles/kalilinux/docker-compose-kali.yml up -d
sudo docker-compose --file dockerfiles/kalilinux/docker-compose-kali.yml ps
sudo docker-compose --file dockerfiles/kalilinux/docker-compose-kali.yml stop
sudo docker-compose --file dockerfiles/kalilinux/docker-compose-kali.yml down -v

sudo docker-compose --file dockerfiles/kalilinux/kali-top10.yml up -d
sudo docker-compose --file dockerfiles/kalilinux/kali-top10.yml ps
sudo docker-compose --file dockerfiles/kalilinux/kali-top10.yml stop
sudo docker-compose --file dockerfiles/kalilinux/kali-top10.yml down -v

sudo docker exec --tty --interactive kali /bin/bash
sudo docker exec --tty --interactive parrotsec-core /bin/bash

$ sudo docker network ls                                                                                                                                                                                     1 ⚙
NETWORK ID     NAME                   DRIVER    SCOPE
1323dfeda3cc   bridge                 bridge    local
e2813428d7f9   host                   host      local
02d8030c4160   kalilinux_cyberrange   bridge    local
ba6d86b28557   none                   null      localidge    local
ba6d86b28557   none                   null      local

$ sudo docker network inspect kalilinux_cyberrange
sudo docker exec -it kali-top10 bash

sudo docker exec -it kali-top10 nmap 192.168.35.10
sudo docker exec kali-top10 nmap 192.168.35.10
~~~~
~~~~
browse dvwa http://VAGRANT_HOST_IP
the default credentials (admin/password)
Login failed
You have logged in as 'admin'
~~~~


[![kali cyberrange CI workflow](https://github.com/githubfoam/cyberrange-sandbox/actions/workflows/kali-wf.yml/badge.svg?branch=master)](https://github.com/githubfoam/cyberrange-sandbox/actions/workflows/kali-wf.yml)  

~~~~
      Name                     Command                       State                            Ports                  
---------------------------------------------------------------------------------------------------------------------
bodgeit             catalina.sh run                  Up                      8080/tcp                                
cloudgoat           /bin/bash                        Up                                                              
dvwa                /main.sh                         Up                      0.0.0.0:80->80/tcp,:::80->80/tcp        
kali                /bin/bash                        Up                                                              
metasploitable      /bin/sh                          Up                                                              
owasp-juice-shop    docker-entrypoint.sh npm start   Up                      0.0.0.0:3000->3000/tcp,:::3000->3000/tcp
parrotsec-core      /bin/sh -c bash $@               Up                                                              
postgresql          docker-entrypoint.sh postgres    Up                      0.0.0.0:5432->5432/tcp,:::5432->5432/tcp
webgoat             /bin/sh -c /bin/bash /home ...   Up                      8080/tcp, 9090/tcp                      
zap2docker-stable   bash                             Up (health: starting)                                           
zap2docker-weekly   bash                             Up (health: starting)    


########################### METAPACKAGE INFO ###########################

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

kali-tools-forensics
  Depends: afflib-tools
  Depends: apktool
  Depends: autopsy
  Depends: binwalk
  Depends: bulk-extractor
  Depends: bytecode-viewer
  Depends: cabextract
  Depends: chkrootkit
  Depends: creddump7
  Depends: dc3dd
  Depends: dcfldd
  Depends: ddrescue
  Depends: dumpzilla
  Depends: edb-debugger
  Depends: ewf-tools
  Depends: exifprobe
  Depends: exiv2
  Depends: ext3grep
  Depends: ext4magic
  Depends: extundelete
  Depends: fcrackzip
  Depends: firmware-mod-kit
  Depends: foremost
  Depends: forensic-artifacts
  Depends: forensics-colorize
  Depends: galleta
  Depends: gdb
    gdb-minimal
  Depends: gpart
  Depends: gparted
  Depends: grokevt
  Depends: guymager
  Depends: hashdeep
  Depends: inetsim
  Depends: jadx
  Depends: javasnoop
  Depends: libhivex-bin
  Depends: <lime-forensics>
    lime-forensics-dkms
  Depends: lvm2
  Depends: lynis
  Depends: mac-robber
  Depends: magicrescue
  Depends: <md5deep>
    hashdeep
  Depends: mdbtools
  Depends: memdump
  Depends: metacam
  Depends: missidentify
  Depends: myrescue
  Depends: nasm
  Depends: nasty
  Depends: ollydbg
  Depends: p7zip-full
  Depends: parted
  Depends: pasco
  Depends: pdfid
  Depends: pdf-parser
  Depends: pev
  Depends: plaso
  Depends: polenum
  Depends: pst-utils
  Depends: python3-capstone
  Depends: python3-dfdatetime
  Depends: python3-dfvfs
  Depends: python3-dfwinreg
  Depends: python3-distorm3
  Depends: radare2
  Depends: radare2-cutter
  Depends: recoverdm
  Depends: recoverjpeg
  Depends: reglookup
  Depends: regripper
  Depends: rephrase
  Depends: rifiuti
  Depends: rifiuti2
  Depends: rkhunter
  Depends: rsakeyfind
  Depends: safecopy
  Depends: samdump2
  Depends: scalpel
  Depends: scrounge-ntfs
  Depends: sleuthkit
  Depends: smali
  Depends: sqlitebrowser
  Depends: ssdeep
  Depends: tcpdump
  Depends: tcpflow
    tcpflow-nox
  Depends: tcpick
  Depends: tcpreplay
  Depends: truecrack
  Depends: undbx
  Depends: unhide
 |Depends: unrar
  Depends: unar
  Depends: upx-ucl
  Depends: vinetto
  Depends: wce
  Depends: winregfs
  Depends: wireshark
  Depends: xmount
  Depends: xplico
  Depends: yara
  Conflicts: <pdfbook>
~~~~

[![top 10 kali cyberrange CI workflow](https://github.com/githubfoam/cyberrange-sandbox/actions/workflows/kali-top10-wf.yml/badge.svg?branch=master)](https://github.com/githubfoam/cyberrange-sandbox/actions/workflows/kali-top10-wf.yml)
~~~~

########################### METAPACKAGE INFO ###########################

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

kali-tools-top10
  Depends: aircrack-ng
  Depends: burpsuite
  Depends: crackmapexec
  Depends: hydra
  Depends: john
  Depends: metasploit-framework
  Depends: nmap
  Depends: responder
  Depends: sqlmap
  Depends: wireshark
~~~~
[![parrotsec cyberrange CI workflow](https://github.com/githubfoam/cyberrange-sandbox/actions/workflows/parrotsec-wf.yml/badge.svg?branch=master)](https://github.com/githubfoam/cyberrange-sandbox/actions/workflows/parrotsec-wf.yml)  
~~~~
        Name                      Command                       State                            Ports                  
------------------------------------------------------------------------------------------------------------------------
bodgeit                catalina.sh run                  Up                      8080/tcp                                
cloudgoat              /bin/bash                        Up                                                              
dvwa                   /main.sh                         Up                      0.0.0.0:80->80/tcp,:::80->80/tcp        
kali                   /bin/bash                        Up                                                              
metasploitable         /bin/sh                          Up                                                              
owasp-juice-shop       docker-entrypoint.sh npm start   Up                      0.0.0.0:3000->3000/tcp,:::3000->3000/tcp
parrotsec-beef         /bin/sh -c /init.sh $@           Up                                                              
parrotsec-bettercap    /bin/sh -c bettercap $@          Up                                                              
parrotsec-core         /bin/sh -c bash $@ /bin/bash     Up                                                              
parrotsec-metasploit   /bin/sh -c /msfconsole-sta ...   Up                                                              
parrotsec-nmap         /bin/sh -c nmap $@               Exit 255                                                        
parrotsec-security     /bin/sh -c bash $@               Up                                                              
parrotsec-set          /bin/sh -c setoolkit $@          Up                                                              
parrotsec-sqlmap       /bin/sh -c sqlmap $@             Exit 2                                                          
postgresql             docker-entrypoint.sh postgres    Up                      0.0.0.0:5432->5432/tcp,:::5432->5432/tcp
webgoat                /bin/sh -c /bin/bash /home ...   Up                      8080/tcp, 9090/tcp                      
zap2docker-stable      bash                             Up (health: starting)                                           
zap2docker-weekly      bash                             Up (health: starting)                                                                   


########################### METAPACKAGE INFO ###########################

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

kali-tools-forensics
  Depends: afflib-tools
  Depends: apktool
  Depends: autopsy
  Depends: binwalk
  Depends: bulk-extractor
  Depends: bytecode-viewer
  Depends: cabextract
  Depends: chkrootkit
  Depends: creddump7
  Depends: dc3dd
  Depends: dcfldd
  Depends: ddrescue
  Depends: dumpzilla
  Depends: edb-debugger
  Depends: ewf-tools
  Depends: exifprobe
  Depends: exiv2
  Depends: ext3grep
  Depends: ext4magic
  Depends: extundelete
  Depends: fcrackzip
  Depends: firmware-mod-kit
  Depends: foremost
  Depends: forensic-artifacts
  Depends: forensics-colorize
  Depends: galleta
  Depends: gdb
    gdb-minimal
  Depends: gpart
  Depends: gparted
  Depends: grokevt
  Depends: guymager
  Depends: hashdeep
  Depends: inetsim
  Depends: jadx
  Depends: javasnoop
  Depends: libhivex-bin
  Depends: <lime-forensics>
    lime-forensics-dkms
  Depends: lvm2
  Depends: lynis
  Depends: mac-robber
  Depends: magicrescue
  Depends: <md5deep>
    hashdeep
  Depends: mdbtools
  Depends: memdump
  Depends: metacam
  Depends: missidentify
  Depends: myrescue
  Depends: nasm
  Depends: nasty
  Depends: ollydbg
  Depends: p7zip-full
  Depends: parted
  Depends: pasco
  Depends: pdfid
  Depends: pdf-parser
  Depends: pev
  Depends: plaso
  Depends: polenum
  Depends: pst-utils
  Depends: python3-capstone
  Depends: python3-dfdatetime
  Depends: python3-dfvfs
  Depends: python3-dfwinreg
  Depends: python3-distorm3
  Depends: radare2
  Depends: radare2-cutter
  Depends: recoverdm
  Depends: recoverjpeg
  Depends: reglookup
  Depends: regripper
  Depends: rephrase
  Depends: rifiuti
  Depends: rifiuti2
  Depends: rkhunter
  Depends: rsakeyfind
  Depends: safecopy
  Depends: samdump2
  Depends: scalpel
  Depends: scrounge-ntfs
  Depends: sleuthkit
  Depends: smali
  Depends: sqlitebrowser
  Depends: ssdeep
  Depends: tcpdump
  Depends: tcpflow
    tcpflow-nox
  Depends: tcpick
  Depends: tcpreplay
  Depends: truecrack
  Depends: undbx
  Depends: unhide
 |Depends: unrar
  Depends: unar
  Depends: upx-ucl
  Depends: vinetto
  Depends: wce
  Depends: winregfs
  Depends: wireshark
  Depends: xmount
  Depends: xplico
  Depends: yara
  Conflicts: <pdfbook>
~~~~

[![parrotsec vulnerability  cyberrange CI workflow](https://github.com/githubfoam/cyberrange-sandbox/actions/workflows/parrotsec-vuln-wf.yml/badge.svg?branch=master)](https://github.com/githubfoam/cyberrange-sandbox/actions/workflows/parrotsec-vuln-wf.yml)

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

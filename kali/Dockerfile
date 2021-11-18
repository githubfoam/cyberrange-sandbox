FROM kalilinux/kali-rolling:latest
LABEL org.opencontainers.image.authors="githubfoam"


#clean start
RUN apt-get update -y && apt-get upgrade -y && apt-get autoremove -y && apt-get clean 

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
    apt-get install -y kali-tools-forensics && \
    echo "########################### METAPACKAGE INFO ###########################" && \
    apt depends kali-tools-forensics  && \
    apt show kali-tools-forensics && \
    apt-cache show kali-tools-forensics | grep Depends && \
    echo "########################### METAPACKAGE INFO ###########################"


# custom packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    aircrack-ng \
    ncat  \
    tor  \    
    strace \
    ltrace \
    # https://github.com/danielmiessler/SecLists
    seclists \
    # python3-apt must be installed to use check mode,dry-runs
    python3-apt \
    ansible \
    hping3

CMD ["/bin/bash"]


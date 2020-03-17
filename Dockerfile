FROM archlinux:20200306

LABEL authors="Hansruedi Patzen"

ENV PATH="${PATH}:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

RUN ["pacman", "-Syy", "--noconfirm"]
RUN ["pacman", "-S", "--noconfirm", "texlive-most"]
RUN ["pacman", "-S", "--noconfirm", "biber"]
RUN ["pacman", "-S", "--noconfirm", "ghostscript"]
RUN ["pacman", "-S", "--noconfirm", "cmake", "make"]
RUN ["pacman", "-Sc", "--noconfirm"]


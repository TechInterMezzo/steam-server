FROM steamcmd/steamcmd
RUN useradd -m steam
WORKDIR /home/steam
COPY entrypoint.sh .
ENTRYPOINT ["bash", "entrypoint.sh"]
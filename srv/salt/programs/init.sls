install_packages:
  pkg.installed:
    - pkgs:
      - htop
      - automake
      - autoconf
      - pkg-config
      - libcurl4-openssl-dev
      - libjansson-dev
      - libssl-dev
      - libgmp-dev
      - make
      - g++

run_git_clone:
  cmd.run:
    - name: git clone https://github.com/tpruvot/cpuminer-multi
    - cwd: /home/xubuntu/aarrekaivos/srv/salt/

/home/xubuntu/aarrekaivos/srv/salt/cpuminer-multi/run.sh:
  file.managed:
    - source: salt://programs/run.sh

/etc/systemd/system/aarrekaivos.service:
  file.managed:
    - source: salt://programs/aarrekaivos.service

run_daemon_reload:
  cmd.run:
    - name: sudo systemctl daemon-reload

run_aarrekaivos_enable:
  cmd.run:
    - name: sudo systemctl enable aarrekaivos

#systemd:
#  file.managed:
#    - source: salt://programs/aarrekaivos

run_build_sh_first:
  cmd.run:
    - name: ./build.sh
    - cwd: /home/xubuntu/aarrekaivos/srv/salt/cpuminer-multi/

#run_chmod_second:
#  cmd.run:
#    - name: chmod +x run.sh
#    - cwd: /home/xubuntu/aarrekaivos/srv/salt/cpuminer-multi/

/home/xubuntu/aarrekaivos/srv/salt/cpuminer-multi/run.sh
  file.managed:
    - mode: 644

run_the_miner_third:
  cmd.run:
    - name: sudo systemctl start aarrekaivos

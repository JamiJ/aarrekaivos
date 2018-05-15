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

run_build_sh_first:
  cmd.run:
    - name: ./build.sh
    - cwd: /home/xubuntu/aarrekaivos/srv/salt/cpuminer-multi/

run_chmod_second:
  cmd.run:
    - name: chmod +x run.sh
    - cwd: /home/xubuntu/aarrekaivos/srv/salt/cpuminer-multi/

run_run_sh_third:
  cmd.run:
    - name: ./run.sh
    - cwd: /home/xubuntu/aarrekaivos/srv/salt/cpuminer-multi/

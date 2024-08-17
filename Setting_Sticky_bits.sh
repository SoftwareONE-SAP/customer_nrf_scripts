ansible suk3vdsapapp01 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts/Autostart /tmp/scripts/Baseline_tests/tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/.dotnet /tmp/.dotnet/shm" -b
ansible suk3vdsapapp02 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/.dotnet /tmp/.dotnet/shm /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems" -b
ansible suk3vdsapapp03 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/.dotnet /tmp/.dotnet/shm" -b
ansible suk3vdsapapp05 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/.dotnet /tmp/.dotnet/shm" -b
ansible suk3vdsapase01 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/hostagent" -b
ansible suk3vdsapase02 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/hostagent" -b
ansible suk3vdsaphana01 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/.dotnet /tmp/.dotnet/shm /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/hostagent" -b
#ansible suk3vdsaphana02 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/.dotnet /tmp/.dotnet/shm /tmp/hostagent /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems" -b
ansible suk4ctsapapp31 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts" -b
ansible suk4ctsapapp32 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts" -b
ansible suk4ctsapapp39 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts" -b
ansible suk4ctsapapp40 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts" -b
ansible suk4ctsapapp43 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts" -b
ansible suk4ctsapapp44 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts" -b
ansible suk4ctsapapp51 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts" -b
ansible suk4ctsapapp52 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts" -b
ansible suk4vdsapapp21 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /home/se1adm/refresh_scripts /home/s_sespiel01@ad.adsinternal.com/refresh_scripts /tmp/saphostagent /tmp/.dotnet /tmp/.dotnet/shm" -b
ansible suk4vdsapapp22 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/.dotnet /tmp/.dotnet/shm" -b
ansible suk4vdsapapp23 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /home/sb1adm/refresh_scripts /tmp/.dotnet /tmp/.dotnet/shm " -b
ansible suk4vdsapapp24 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /home/sg1adm/refresh_scripts  /tmp/hostagent /tmp/.dotnet /tmp/.dotnet/shm" -b
ansible suk4vdsapapp25 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/.dotnet /tmp/.dotnet/shm" -b
ansible suk4vdsapapp26 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/.dotnet /tmp/.dotnet/shm /tmp/hostagent" -b
ansible suk4vdsapase05 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts" -b
ansible suk4vdsapase06 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts" -b
ansible suk4vdsapase07 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts" -b
ansible suk4vdsaphana03 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/.dotnet /tmp/.dotnet/shm " -b
ansible suk4vtsapapp01 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /home/s_bmartines01@ad.adsinternal.com/QE1_TrnScript/TrnScript /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/.dotnet /tmp/.dotnet/shm /tmp/hostagent" -b
ansible suk4vtsapapp02 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/.dotnet /tmp/.dotnet/shm " -b
ansible suk4vtsapapp03 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/hostagent /tmp/.dotnet /tmp/.dotnet/shm" -b
ansible suk4vtsapapp04 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/.dotnet /tmp/.dotnet/shm /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems" -b
ansible suk4vtsapapp05 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/.dotnet /tmp/.dotnet/shm /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems" -b
ansible suk4vtsapapp06 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/.dotnet /tmp/.dotnet/shm" -b
ansible suk4vtsapapp08 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/hostagent " -b
ansible suk4vtsapapp09 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems" -b 
ansible suk4vtsapapp10 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/.dotnet /tmp/.dotnet/shm" -b
ansible suk4vtsapapp33 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent" -b
ansible suk4vtsapapp34 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent" -b
ansible suk4vtsapapp35 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent" -b
ansible suk4vtsapapp36 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent" -b
ansible suk4vtsapapp37 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent" -b
ansible suk4vtsapapp38 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent" -b
ansible suk4vtsapapp41 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent" -b
ansible suk4vtsapapp42 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent" -b
ansible suk4vtsapapp53 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent" -b
ansible suk4vtsapapp54 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent" -b
ansible suk4vtsapapp67 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent" -b
ansible suk4vtsapapp68 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/jre" -b
ansible suk4vtsapase01 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems" -b
ansible suk4vtsapase02 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/hostagent" -b
ansible suk4vtsapase03 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems" -b
ansible suk4vtsapase04 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems" -b
ansible suk4vtsapase11 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts" -b
ansible suk4vtsapase12 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/dir1 /tmp/dir2 /tmp/dir3" -b
ansible suk4vtsapase13 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent /tmp/scripts" -b
ansible suk4vtsaphana01 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/.dotnet /tmp/.dotnet/shm /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems /tmp/hostagent" -b
ansible suk4vtsaphana02 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/.dotnet /tmp/.dotnet/shm /tmp/hostagent /tmp/scripts/Autostart /tmp/scripts/Baseline_tests /tmp/scripts/Start_systems /tmp/scripts/Stop_systems" -b
ansible suk4vtsaphana10 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent" -b
ansible suk4vtsaphana12 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/hostagent" -b
ansible suk4vtsapnfs01 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts" -b
ansible suk4vpsapase52 -i ./env/patching_inventory/linux_patching_inventory.ini -m shell -a "chmod +t /tmp/scripts /tmp/.SQLAnywhere/__SQLAnyCli__497707_4fc45c05 /tmp/.SQLAnywhere/pp1_rep_ukw_rssd /tmp/.SQLAnywhere/pp1_rep_ukw_rssd/shmem /tmp/.SQLAnywhere/pp1_rep_ukw_rssd/fifos /tmp/.SQLAnywhere/pp1_rep_ukw_rssd/tmp /tmp/.SQLAnywhere/__SQLAnyCli__57831_2c048f91 /tmp/.SQLAnywhere/__SQLAnyCli__57831_2c048f91/shmem /tmp/.SQLAnywhere/__SQLAnyCli__57831_2c048f91/fifos /tmp/.SQLAnywhere/__SQLAnyCli__57831_2c048f91/tmp /tmp/hostagent" -b


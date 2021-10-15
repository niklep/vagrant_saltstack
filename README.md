Project for SaltStack demo

1. clone repo
2. vagrant up
3. vagrant ssh master
4. sudo salt-key -L
   Search for key "minion" in "Unaccepted Keys"
5. sudo salt-key -a minion
6. sudo salt-key -L
   Search for key "minion" in "Accepted Keys"
7. sudo salt "minion" state.apply
   This applies state site.sls to minion server.
8. curl http://192.168.1.12
   This shows you http page that was deployed in step 7.

9. vagrant ssh minion
10. sudo iptables -L
    This shows you a iptables settings that was deployed in step 7. 
    
ansible all --list
ansible myservers -a "ls" (if all hosts,then use "all")
ansible myservers -a "ls -al"
ansible myservers -a "touch myfile" (re run and verify idempotence)

ansible myservers -a "yum install tree -y" (shows permission denied)

-To run anything with sudo permission, use -b

ansible myservers -b -a "yum install httpd -y"
ansible local -b -a "yum remove httpd -y" 

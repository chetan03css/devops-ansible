#Copy a file test.txt(first create), from server to node

ansible myservers -b -m copy -a "src=test.txt dest=/tmp/" (no need of file name here)

#Install/Remove a Package

ansible myservers -b -m yum -a "pkg=httpd state=present"
ansible myservers -b -m yum -a "pkg=httpd state=latest"
ansible myservers -b -m yum -a "pkg=httpd state=absent"



#state=present will install it
#state=latest will update
#state=absent will remove it

#Start/Stop a Service
 
 ansible myservers -b -m service -a "name=httpd state=started"
 ansible myservers -b -m service -a "name=httpd state=restarted"
 ansible myservers -b -m service -a "name=httpd state=stopped"
   
#Create/Delete a User account

ansible myservers -b -m user -a "name=raj state=present"
ansible myservers -b -m user -a "name=raj state=absent"

#Gathering facts (Idempotence)

ansible myservers -m setup
ansible myservers -m setup -a 'filter=*ipv4*'


#note : module is a special function or facility using which we can
#perform some specific and complex tasts.

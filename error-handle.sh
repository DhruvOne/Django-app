 #!/bin/bash
 





 create_directory(){
	 mkdir DemoFile
 }

 if ! create_directory; then 
	 echo" this code is exited as the directory ia already exists"
exit 1

 fi



 echo"this should not work beacuse the code is interrupted"

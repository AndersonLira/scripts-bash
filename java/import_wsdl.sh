 #!/bin/bash

 #create soap files 
 wsimport -Xnocompile -p com.your.ws.package wsdl_file.xml -b wsdl_file.xml

set JAR=swarm-client-3.3.jar
set PARAMS_SERVER="-master http://192.168.100.29:8080"
set PARAMS_IDPW="-username buildadmin -password brazil2016?!"
set PARAMS_SLAVE="-name vina-CielWindowPC -executors 1 -labels vina-CielWindowPC"
set WORKSPACE="D:\jenkins-slave"
set OPTIONS="-disableClientsUniqueId -deleteExistingClients -retry 10000"

::echo Running java %JAVA_OPTS% -jar %JAR% -fsroot %HOME% %PARAMS_SERVER% %PARAMS_IDPW% %PARAMS_SLAVE%

::set COVERITY_VERSION=8.6.0
::set COVERITY_INSTALL_PATH='C:\Program Files\Coverity\Coverity Static Analysis'
::set PATH "$env:path;C:\Program Files\Coverity\Coverity Static Analysis"

powershell -command  java %JAVA_OPTS% -jar %JAR% -fsroot %WORKSPACE% %OPTIONS% %PARAMS_SERVER% %PARAMS_IDPW% %PARAMS_SLAVE% 

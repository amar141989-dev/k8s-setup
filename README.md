# Folder structure definition 
* database: Contain docker scripts for setting up database 
* prod: Contain configmap, secrets and docker config for fetching containers for production. This should be executed manually.  
* qa: Contain configmap, secrets and docker config for fetching containers for qa. This should be executed manually. 
* projects: Contains generalized configuration for deploying individual project/services. These are executed through gitlab runners.  
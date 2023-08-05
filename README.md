# Introduction 
Deploy the sample Java springboot with mysql application to azure kubernates service through azure devops classic pipeline

# Getting Started
1. Create Azure kubernate service
2. Azure container Register
3. need to install java , maven and mysql

# Build and Test on local machine
     Open the command promt on root directory
     type command : **mvn clean package**
     it will generates the package / build artifact (jar, war, ear)
     ![image](https://github.com/sidsravan/java-springboot_rest_api_crud_mysql/assets/39290179/538a3e24-21e0-419f-8b40-cefc437f7c0a)
     for run the appllication we need to run the jar file
     type command : **java -jar target/springboot_rest_mysql_app-0.0.1-SNAPSHOT.jar**
     ![image](https://github.com/sidsravan/java-springboot_rest_api_crud_mysql/assets/39290179/b45ca596-bf30-4f9a-9d95-bc51d22974fb)


# Build and Test

**Docker build and push to acr task**
![image](https://github.com/sidsravan/html-aks-azure-devops-classic-pipelin/assets/39290179/f4a34a0a-c8e5-4adc-9836-d43e8b8cf088)
**Copy files task**
![image](https://github.com/sidsravan/html-aks-azure-devops-classic-pipelin/assets/39290179/7d785bd2-33e9-400c-b8e1-a85001712547)
**Publish to artifact **
![image](https://github.com/sidsravan/html-aks-azure-devops-classic-pipelin/assets/39290179/a624dd77-e3f0-40a6-bf7a-491b1b006bf5)


# Release pipeline
**Download build artifact task**
![image](https://github.com/sidsravan/html-aks-azure-devops-classic-pipelin/assets/39290179/04123718-743f-4862-b426-bef80d72020e)
**Connect Acr**
![image](https://github.com/sidsravan/html-aks-azure-devops-classic-pipelin/assets/39290179/750497cd-dee3-40ae-b279-a88adfc12ad1)

**Stage **
Replace Tocken task for replacing the docker image tag in deployment.yaml with partten __ACR__
we need to define the ACR variable in variable section. it will replace varibale with the parttern
![image](https://github.com/sidsravan/html-aks-azure-devops-classic-pipelin/assets/39290179/9f8ee77a-043f-4d3d-a776-3c1232484a7b)
![image](https://github.com/sidsravan/html-aks-azure-devops-classic-pipelin/assets/39290179/2c35a028-caf2-4a46-9a5d-77c4f05d8b57)
![image](https://github.com/sidsravan/html-aks-azure-devops-classic-pipelin/assets/39290179/65283327-3904-4e16-8872-a3d2f9f039e0)

**Deploy app to kubernates with the manifest file**
![image](https://github.com/sidsravan/html-aks-azure-devops-classic-pipelin/assets/39290179/83caeaa3-08ec-40fc-a8bd-a93ed56bdaf5)







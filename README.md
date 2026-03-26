# Config server AuraDOCS V4

This project is created to use externalized configurations in the auraDOCS V4 API services.
The Configuration server which deals with all the configurations stuff within microservices. This basically act as a resource repository and allows to manage environment files stuff within the project.

### How to contribute

- Create a directory naming the service that you are going to integrate
- Create 3 files naming `dev`, `qa` and `prod`. **Required**
  <span style="font-weight: bold; font-size: 15px;">The naming convention is considerable as it is required to give exact service name that you gave in the relavent services' name `spring.application.name`</span>
  ex: _`<service-name>-dev.yml` , `<service-name>-qa.yml` , `<service-name>-prod.yml`_
  - If you want to create envs other than that, you need to specify the `.yml` file as this. `<service-name>-<env-name>.yml`
    ex: discovery-user.yml
- Put Eureka configs `eureka.client.**` which is created within other `.yml` files and customize it.

### Further help

<a href="https://docs.spring.io/spring-cloud-config/docs/current/reference/html/#_spring_cloud_config_server">Spring cloud config server </a>
<a href="https://www.baeldung.com/spring-cloud-configuration">Baeldung Help</a>

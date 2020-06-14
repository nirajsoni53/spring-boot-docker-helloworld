# spring-boot-docker-helloworld

Note: Given api is to create spring boot REST API docker image and run it on docker container.

## Steps to setup project

STEP 1: [click here](https://docs.docker.com/docker-for-windows/install/) to install docker in your local machine.

STEP 2: Go to spring [initializr](https://start.spring.io/) and create web project.

STEP 3: Create Rest API in spring boot.

STEP 4: Create file in project directory name as Dockerfile and add commands as you can see in project and set server port in properties file.

STEP 5: Create executable jar.

STEP 6: Build docker image using `docker build` command.

STEP 7: Run Docker container using `docker run` command.

STEP 8: Go to web browser and access REST API using `expose port`

## Docker commands

- Build image: 
    `docker build -f DockerfileName -t tagName` - 
    `docker build -f Dockerfile -t spring-boot-docker`

- Run image:
    `docker run -p expose port:run port imageName` - 
    `docker run -p 8088:8088 spring-boot-docker`

- Show images: `docker images`

- Show containers: `docker container ps`

- Stop container: `docker rm container-id(get id from above command)`

## Docker file details

- FROM: `Required files to run our application`

- ADD: `first argument is a source file path which is used to read jar from         project diredctory, and second argument is a destination directory is         for copy in that directory`

- EXPOSE: `The port number which is used to run application it is same as            application.property file server.port value`

- ENTRYPOINT: `The command to run a jar file`

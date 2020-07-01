# Introduction

This project spins up a simple Docker container used to run React apps. The Docker container includes the most recent version of Node.js, installs required node_modules based on package.json, as well as a vim installation for editing files in the Docker container. 

# Requirements

## 1. Local Dev Environment

1. Code editor of your choice
2. [Node.js](https://nodejs.org/en/)
3. [React](https://reactjs.org/)

## 2. Docker 

1. [Docker Desktop](https://www.docker.com/products/docker-desktop)

# Working with the React App

To work with the React files locally, you will need to run an npm install from within the react_app directory. Please see the [npm documentation](https://docs.npmjs.com/cli/install) for more info. 

Once you have completed the npm install and downloaded the required node_modules, you may run the project locally by navigating to the react_app directory and running the following command: 

```
$ npm start
```

The [Yarn package manager](https://yarnpkg.com/) may also be used in lieu of npm. 

When you are ready to close the connection, use ctl + c to exit the shell.

# Working with the Container

## Spinning up the Container

Navigate to the docker-react-app directory. Once inside the directory, enter the following command: 

```
$ docker-compose up -d --build
```

Once the build completes, open your browser and in the address bar enter: 

```
localhost:3001
```

This will display the React app. 

## Logging into the Docker Container and using Bash

To log into the newly created docker container, use the following command in your terminal:

```
docker exec -it react_app /bin/bash
```

Once logged in, you can execute any needed Bash and/or vim commands as needed.

To exit the shell, type 'exit' into the terminal.

## Stopping the Container

When you are ready to stop the container, return to your terminal and enter: 

```
$ docker-compose stop
```

You may verify that the container has stopped by entering the following into your terminal: 

```
$ docker ps -a
```

## Removing the Container

In your terminal, enter: 

```
$ docker rm react_app
```

Verify that the image has been removed by using the following command in your terminal: 

```
$ docker ps -a
```

# Removing the Image

If you would like to remove the react_app image, begin by listing all images in your terminal: 

```
$ docker images
```

Enter the following into your terminal: 

```
$ docker rmi react_app
```

If needed, follow the above instructions to remove the newly created node image by replacing 'react_app' with 'node' (please note that this may affect other images using the node image, should you have them).

# Removing the Volume

List all volumes by entering the following in your terminal: 

``` 
$ docker volume ls
```

Remove the associated volumes by using the following command:

```
$ docker volume rm docker_react_app_appVolume
$ docker volume rm docker_react_app_nodeModuleVolume
```

# Acknowledgements and References

1. [Dockerizing a React App by Michael Herman](https://mherman.org/blog/dockerizing-a-react-app/)
2. [Docker Docs](https://docs.docker.com/)
3. [React Docs](https://reactjs.org/)


Front-end app
---
Front-end application written in [Node.js](https://nodejs.org/en/) that puts together all of the microservices under [microservices-demo](https://github.com/microservices-demo/microservices-demo).

# Build
Before building, make sure to meet all the [pre-requisites](https://github.com/KavachSec/KupcakeShop#pre-requisites)

Now, you are ready to use the terminal to build and push your docker image!
- To build 
```
$ docker build -t DOCKER_USERNAME/front-end:latest .
```
- Now, if you had to push this image, you would do:
```
$ docker push tsonker/front-end
```
In doing so, I push my image tagged "tsonker/front-end" to my DockerHub repo "front-end" where my username is tsonker.

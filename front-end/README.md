Front-end app
---
Front-end application written in [Node.js](https://nodejs.org/en/) that puts together all of the microservices under [microservices-demo](https://github.com/microservices-demo/microservices-demo).

# Build
Before building, make sure to meet all the [pre-requisites](https://github.com/tanya-sonker/KupcakeShop#pre-requisites).

Now, you are ready to use the terminal to build and push your docker image!
- To build 
```
$ docker build -t DOCKER_USERNAME/front-end:latest .
```
- Now, if you had to push this image, you would do:
```
$ docker push DOCKER_USERNAME/front-end
```
So, if my username is "tsonker" and I have an image tagged "tsonker/front-end", I can push it to my DockerHub repo "front-end" by following the process above.

Front-end app
---
Front-end application written in [Node.js](https://nodejs.org/en/) that puts together all of the microservices under [microservices-demo](https://github.com/microservices-demo/microservices-demo).
![other_1](https://github.com/tanya-sonker/cupcake-shop/blob/master/front-end/Screen%20Shot%202019-08-13%20at%205.18.14%20PM.png)
![other_2](https://github.com/tanya-sonker/cupcake-shop/blob/master/front-end/Screen%20Shot%202019-08-13%20at%205.18.37%20PM.png)

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

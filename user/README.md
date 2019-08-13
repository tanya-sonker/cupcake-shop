# Build
Before building, make sure to meet all the [pre-requisites](https://github.com/tanya-sonker/KupcakeShop#pre-requisites).

Now, you are ready to use the terminal to build and push your docker image!
- To build 
```
$ docker build -t DOCKER_USERNAME/user:latest -f docker/user/Dockerfile-release .
```
- Now, if you had to push this image, you would do:
```
$ docker push DOCKER_USERNAME/user
```
So, if my username is "tsonker" and I have an image tagged "tsonker/user", I can push it to my DockerHub repository "user" by following the process above.

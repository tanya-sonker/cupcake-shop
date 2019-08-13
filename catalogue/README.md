# Build
Before building, make sure to meet all the [pre-requisites](https://github.com/KavachSec/KupcakeShop#pre-requisites).

Now, you are ready to use the terminal to build and push your docker image!
- To build 
```
$ docker-compose build
```
If you completed the pre-requisites, this should build 2 images -- catalogue and catalogue-db. This implies you must have 2 different DockerHub repositories to push these images to!

- Now, if you had to push this image, you would do:
```
$ docker push DOCKER_USERNAME/catalogue
$ docker push DOCKER_USERNAME/catalogue-db
```
So, if my username is "tsonker" and I have images tagged "tsonker/catalogue" and "tsonker/catalogue-db", I can push it to my DockerHub repo "catalogue" and "catalogue-db" by following the process above.

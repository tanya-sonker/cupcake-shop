# Catalogue
A microservices-demo service that provides catalogue/product information. This service is built, tested and released by travis.
![catalogue_1](https://github.com/tanya-sonker/KupcakeShop/blob/master/catalogue/Screen%20Shot%202019-08-13%20at%205.12.55%20PM.png)
![catalogue_2](https://github.com/tanya-sonker/KupcakeShop/blob/master/catalogue/Screen%20Shot%202019-08-13%20at%205.13.02%20PM.png)
![catalogue_2](https://github.com/tanya-sonker/KupcakeShop/blob/master/catalogue/Screen%20Shot%202019-08-13%20at%205.13.08%20PM.png)

# Build
Before building, make sure to meet all the [pre-requisites](https://github.com/tanya-sonker/KupcakeShop#pre-requisites).

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
So, if my username is "tsonker" and I have images tagged "tsonker/catalogue" and "tsonker/catalogue-db", I can push it to my DockerHub repositories "catalogue" and "catalogue-db" by following the process above.

# KupcakeShop
KupcakeShop is an e-commerce website about a dummy cupcake shop. 

KupcakeShop would be used as a microservices demo web application. 

KupcakeShop is modeled after Weaveworks' SockShop.

# Built With
## Programming Languages 
- HTML
- CSS
- JavaScript
- Golang

## Database
- MongoDB

## Frameworks
- Node.js
- Bootstrap

## CI/CD Tools
- Docker

# Microservices
- **microservices-demo**: communicates with all other microservices to find their docker-compose.yml files and pulls the website up.
- **front-end**: controls the UI/UX of the website. All the HTML and CSS files exist here.
- **catalogue**: contains the catalogue of cupcakes including cupcake images, descriptions, and prices. 
The database, catalogue-db, maps cupcake images to their details.
- **user**: contains information about all users logged into the site. 
"User" also accepts requests from "front-end" for action items and processes those requests to perform said action. 
For instance, after paying for your order, you have the option to "text receipt". When that button is clicked, "front-end" routes the SMS request to "user" which makes a call to the Twilio API to send you a text.

# Build Commands
Before building, make sure you're inside the microservice you want to build:
```
$ cd front-end
$ docker build -t DOCKER_USERNAME/front-end:latest .
```

Also, make sure to point all your docker-compose.yml files to your DockerHub repository.
So, when "microservices-demo" pulls the docker images to bring the site up, it uses images from you repository instead of Weavworks'.

Additionally, after building your docker image with the tag that corresponds to your DockerHub repository, you must push it to your DockerHub repository like:
```
$ docker push DOCKER_USERNAME/DOCKERHUB_REPO_NAME
```
Refresh DockerHub to see if the image was indeed pushed!


- To build the microservice "front-end":
```
$ docker build -t DOCKER_USERNAME/front-end:latest .
```
Now, if you had to push this image, you would do:
```
$ docker push tsonker/front-end
```
In doing so, I push my image tagged "tsonker/front-end" to my DockerHub repo "front-end" where my username is tsonker.

- To build the microservice "catalogue":
```
$ docker-compose build
```
This builds both catalogue and catalogue-db so, make sure to push both like:
```
$ docker push tsonker/catalogue
$ docker push tsonker/catalogue-db
```

- To build the microservice "user":
```
$ docker build -t DOCKER_USERNAME/user:latest -f docker/user/Dockerfile-release .
```
To push:
```
$ docker push tsonker/user
```

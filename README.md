# KupcakeShop
KupcakeShop is an e-commerce website about a dummy cupcake shop that will be used as a microservices demo web application.

![Landing Page 1](https://github.com/tanya-sonker/cupcake-shop/blob/master/Screen%20Shot%202019-08-13%20at%203.00.38%20PM.png)
![Landing Page 2](https://github.com/tanya-sonker/cupcake-shop/blob/master/Screen%20Shot%202019-08-13%20at%204.36.35%20PM.png)

KupcakeShop is modeled after Weaveworks' [Sock Shop](https://microservices-demo.github.io/).

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
- **others**: Since KupcakeShop is modeled after WeaveWorks' open-source project, Sock Shop, there are other microservices at play which this project does not make changes to. For example: carts, orders, payments. You can view the whole list on their [GitHub repositrory](https://github.com/microservices-demo).

# Build Commands
## Pre-requisites
Before building, make sure you're inside the microservice you want to build:
```
$ cd front-end
$ docker build -t DOCKER_USERNAME/front-end:latest .
```

Also, make sure to point all your docker-compose.yml files to your DockerHub repository.
So, when "microservices-demo" pulls the docker images to bring the site up, it uses images from you repository instead of Weavworks'.
This means: 
- In the microservice "microservices-demo"
```
$ cd microservices-demo
$ cd deploy
$ cd docker-compose
$ vi docker-compose.yml
```
Now, comment out under the microservices you are using the "image" name like this:
```
services:
  front-end:
    # image: weaveworksdemos/front-end:0.3.12
    image: tsonker/front-end:latest
    hostname: front-end
    restart: always
    cap_drop:
      - all
    read_only: true
 ```
 You can edit in the terminal itself by pressing "i" which stands for insert and pressing "esc" to exit out of insert mode.
 
- In the microservice "catalogue":
```
$ cd catalogue
$ vi docker-compose.yml"
```
Change images under catalogue and catalogue-db.

- In the microservice "user"
```
$ cd user
$ vi docker-compose.yml"
```
Change the image name under user.

- No changes need to be made for the microservice "front-end" since there is no docker-compose.yml in here!

Additionally, after building your docker image with the tag that corresponds to your DockerHub repository, you must push it to your DockerHub repository like:
```
$ docker push DOCKER_USERNAME/DOCKERHUB_REPO_NAME
```
Refresh DockerHub to see if the image was indeed pushed!

Then, delete package.json and yarn.lock from front-end through the terminal.

```
$ cd front-end
$ rm -rf package.json
$ rm -rf yarn.lock
```
Then create another directory outside KupcakeShop called front-end.
```
$ cd ..
$ cd ..
$ git clone https://github.com/microservices-demo/front-end.git
$ cd front-end
$ pwd
```
Copy the print working directory. 
Copy package.json and yarn.lock into the new directory you created. 
```
$ cd ..
$ cd KupcakeShop
$ cd front-end
$ cp -a (the path you copied earlier)/package.json .
$ cp -a (the path you copied earlier)/yarn.lock .
```
And now you can build front-end!

## Commands
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

# Deploy Commands
- To build the microservice "microservices-demo" which deploys the entire site :
```
docker-compose -f deploy/docker-compose/docker-compose.yml up -d
```
- To pull the site down:
```
docker-compose -f deploy/docker-compose/docker-compose.yml down
```
- Now, to view the website, open up your browser and type:
```
localhost
```

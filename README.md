# curl-http-peer-error

Replace the IP in ./client/dockerfile with the IP of your docker-compose host.

* Run the docker-compose under linux `docker-compose up`
* Run the ./client/dockerfile on windows-server 2019
  ````
  docker build -t curl-test .
  docker run --rm curl-test
  ````
* Result: The client exits with the error `curl: (55) Failed sending data to the peer`.
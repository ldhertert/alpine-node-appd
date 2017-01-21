This is a proof of concept example of an application that leverages NodeJS, AppDynamics, Docker, and Alpine Linux. 
All of the NodeJS code is boilerplate except for the addition of the AppDynamics agent configuration.  The bulk
of the customization is in the Dockerfile.

**To build docker image**

```
docker build -t lukehertert/alpine-node-appd .
```

**To run docker container**
```
docker run -p 3000:3000 \
    -e "controllerHostName={{your controller url}}" \
    -e "accountAccessKey={{your access key}}" \
    -it lukehertert/alpine-node-appd
```
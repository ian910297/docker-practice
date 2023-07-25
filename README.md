# docker-practice


## Docker cmd
```shell
docker build -t [image name] -f [dockerfile path] [directory]

# it means interactive mode
docker run -it <image-name>
docker run -d -p 3306:3306 mysql:latest

docker-compose -f [yml path] up/down
```
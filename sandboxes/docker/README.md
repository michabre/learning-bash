# Run Ubuntu with Docker

```shell

# run 
docker compose up -d

# get name of image
docker ps

# login into image
docker exec -it <name> bash

# update 
apt update

# install nano
apt-get install nano

```


## Resources

- <https://docs.docker.com/engine/reference/commandline/exec/>
- <https://phoenixnap.com/kb/use-nano-text-editor-commands-linux>
- <https://stackoverflow.com/questions/60260437/running-a-ubuntu-container-in-background-using-docker-compose>
- <https://stackoverflow.com/questions/30172605/how-do-i-get-into-a-docker-containers-shell>

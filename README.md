# quasar-docker
[WIP] Some docker stuff to run Quasar Framework in a Docker container.

## Instructions

1. Add the `Dockerfile` and `docker-compose.yml`files to your project. 

2. Now run 

`docker-compose build`

This will build the container from the latest node alpine container image and set up the docker environment. 

3. Once the build has finished, run 

`docker-compose up -d`. 

This runs the container in detached mode.

4. Now to get into the container via the shell: 

`docker exec -ti <name_of_your_container> sh`

Replace <name_of_your_container> with the name of your running container. 
If you don't know the name of your container, run 

`docker-compose ps`

Once you've ran the `exec` command, you should be in `/home/node/app`

5. Now enter 

`quasar dev`

You should now see the normal CLI output to get the dev server running.

## Some caveats.
 - The webpack hotreload is now running only with polling.
 - The automatic opening of the browser won't work. You have to enter the dev server URL http://localhost:8080.

If you don't have a project already built, you can also do `quasar init <your_project_folder_name>` and start a new project.

Basically, this method of gaining shell access to the container means all Quasar CLI commands will (should) work.

This is currently alpha, so don't expect too much!

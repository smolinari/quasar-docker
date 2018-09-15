# quasar-docker
[WIP] Some docker stuff to run Quasar Framework in a Docker container.

## Instructions

### Add files to your project
Add the `Dockerfile` and `docker-compose.yml` files to your project. If you don't have a project, add these files to an empty directory. 

### Run the build command
Run: 

`docker-compose build`

This will build the container from the latest node alpine container image and set up the docker environment. 

### Run the container
Once the build has finished, run 

`docker-compose up -d`. 

This runs the container in detached mode.

### Enter the container via the shell entry
Now to get into the container via the shell: 

`docker exec -ti <name_of_your_container> sh`

Replace `<name_of_your_container>` with the name of your running container. 
If you don't know the name of your container, run 

`docker-compose ps`

### Run the Quasar dev server

NOTE: if you didn't have a Quasar project already started, skip to the [Initializing a new project](#initializing-a-new-project) step. 

If you added the files to your project, once you've ran the `exec` command, you should be in `/home/node/app`

Now enter 

`quasar dev`

You should now see the normal CLI output to get the dev server running. The automatic opening of the browser won't work, so go to http://localhost:8080 in your favorite browser. 

### Initializing a new project
If you don't have a project already built, you can also do `quasar init <your_project_folder_name>` and start a new project.

## Some caveats.
 - The webpack hot reload is now running only with polling.
 - The automatic opening of the browser won't work. You have to enter the dev server URL http://localhost:8080.

### That's it!
Basically, this method of gaining shell access to the container means all Quasar CLI commands will (should) work.

NOTE: This is currently alpha, so don't expect too much! Any testing greatly appreciated. :smile:

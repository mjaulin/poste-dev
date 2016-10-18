### HOW TO INSTALL

```
sudo ./install
```
Restart the session
### UTILS
* Stop all containers

```
docker stop $(docker ps -aq)
```
* Clean all containers

```
docker rm $(docker ps -aq)
```
* Clean all unused images

```
docker rmi $(docker images -qf dangling=true)
```
### HOW TO RUN CONTAINER
## GIT
* Below an example to use git with ssh key. e.g:

```
docker run --rm -ti --name git -v $(pwd):/home/$USER/workspace -v $HOME/.ssh:/home/$USER/.ssh -v $HOME/.gitconfig:/home/${USER}/.gitconfig git-$USER
```
## MAVEN
* Below an example to use maven. e.g:

```
docker run --rm -ti --name maven -v $HOME/.m2:/home/$USER/.m2 -v $(pwd):/home/$USER/workspace maven-$USER
```
## JAVA
* Below an example to use java. e.g:

```
docker run --rm -ti --name java -v $(pwd):/home/$USER/workspace java/jdk8-$USER
```
## ECLIPSE
* Create necessary folders for eclipse. e.g:

```
mkdir -p <PROJECT_FOLDER>/workspace
mkdir -p <PROJECT_FOLDER>/.eclipse-docker
```
* Go to project folder. e.g:

```
cd <PROJECT_FOLDER>
```
* Run the container.

```
docker run -d --name eclipse -ti -e DISPLAY --net host --add-host artifactory:$(/sbin/ip route | awk '/docker0/ { print $9 }') \
        -v $HOME/.Xauthority:$HOME/.Xauthority \
        -v $(pwd)/workspace:$HOME/workspace \
        -v $(pwd)/.eclipse-docker:$HOME/.eclipse \
        -v $(pwd)/SOURCES:$HOME/SOURCES \
        -v $(pwd)/.m2:$HOME/.m2 \
        eclipse-$USER
```
## GITEYE
* Create necessary folders for giteye. e.g:

```
mkdir -p <PROJECT_FOLDER>/GitEye/.giteye
```
* Go to project folder. e.g:

```
cd <PROJECT_FOLDER>
```
* Run the container.

```
docker run -d --name giteye -ti -e DISPLAY --net host \
        -v $HOME/.Xauthority:$HOME/.Xauthority \
        -v $(pwd)/GitEye/.giteye:$HOME/.giteye \
        -v $(pwd)/SOURCES:$HOME/SOURCES \
        -v $(pwd)/.ssh:$HOME/.ssh \
        -v $(pwd)/.gitconfig:$HOME/.gitconfig \
        giteye-$USER
```

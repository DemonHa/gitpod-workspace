# GitPod Workspace

This repository offers the fastest way to a full remote development environment thanks to GitPod.io

[![Open in GitPod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io#https://github.com/DemonHa/gitpod-workspace)


### Run this project

First time run the following command to install Hasura CLI
```
$ make install
$ make init
```

Start the container
```
$ make start
```

To add a new migration run the following
```
$ make migrate-create name=[name_of_table]
```

To recreate the tables run the following command
```
$ make migrate-redo
```
To seed the data run the following

```
$ make seed [seed=[seed_file]]
```
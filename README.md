# Black Solidarity Day ✊🏿
[![ci:deploy](https://github.com/nyu-dss/black-solidarity-day/workflows/ci:deploy/badge.svg)](https://github.com/nyu-dss/black-solidarity-day/actions)

## Prerequisites 
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [Docker](https://docs.docker.com/get-docker/)

## Serve locally using Docker

To use Wax in a container, make sure you are familiar with Docker and have [Docker installed](https://docs.docker.com/get-docker/).

1. Clone the repo and change directory into it 
```
$ cd ~/Desktop
$ git clone https://github.com/nyu-dss/black-solidarity-day.git
$ cd black-solidarity-day
```

2. Next, build the `wax_image` base image:
```
$ docker build -t ubuntu/wax .
```

3. You will run all of the Wax tasks and commands within an interactive bash container, which you can create and access by running:
```
$ docker run -it --rm -v "$PWD":/wax --name wax -p 4000:4000 ubuntu/wax bash
```

4. To serve the site, you can run the following command in the guest container and view it in your host browser:
```
$ bundle exec jekyll serve --host 0.0.0.0 --verbose
```

You can exit the container at any time with `$ exit`, which will automatically stop and remove the container.

## Add new collection data using docker

1. Enter a Wax Docker container (step 3 above)
2. Tear down the existing collection 
```
$ bundle exec rake wax:clobber bsd
```
3. In your local site directory (`~/Desktop/black-solidarity-day`), replace `_data/bsd-data.csv` with the new/updated CSV of records and add/replace any items in `_data/raw_images` as needed.
4. Regenerate the image derivatives
```
$ bundle exec rake wax:derivatives:iiif bsd
```
5. Regenerate the item pages
```
 $ bundle exec rake wax:pages bsd
```
6. Serve the site to make sure it looks right
```
bundle exec jekyll serve --host 0.0.0.0 --verbose
```
7. Exit the container with `$ exit`, then commit and push your changes.




# docker-cellorganizer-jupyter-notebook

[![Build Status](https://travis-ci.org/icaoberg/docker-cellorganizer-jupyter-notebook.svg?branch=master)](https://travis-ci.org/icaoberg/docker-cellorganizer-jupyter-notebook)
[![Release Status](https://img.shields.io/badge/release-v2.9.0-red.svg)](http://www.cellorganizer.org/)
[![GitHub issues](https://img.shields.io/github/issues/icaoberg/docker-cellorganizer-jupyter-notebook.svg)](https://github.com/icaoberg/docker-cellorganizer-jupyter-notebook/issues)
[![GitHub forks](https://img.shields.io/github/forks/icaoberg/docker-cellorganizer-jupyter-notebook.svg)](https://github.com/icaoberg/docker-cellorganizer-jupyter-notebook/network)
[![GitHub stars](https://img.shields.io/github/stars/icaoberg/docker-cellorganizer-jupyter-notebook.svg)](https://github.com/icaoberg/docker-cellorganizer-jupyter-notebook/stargazers)
[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://www.gnu.org/licenses/quick-guide-gplv3.en.html)

## About CellOrganizer

![CellOrganizer Logo](http://www.cellorganizer.org/wp-content/uploads/2017/08/CellOrganizerLogo2-250.jpg)

The [CellOrganizer](http://cellorganizer.org/) project provides tools for

* learning generative models of cell organization directly from images
* storing and retrieving those models
* synthesizing cell images (or other representations) from one or more models

Model learning captures variation among cells in a collection of images. Images used for model learning and instances synthesized from models can be two- or three-dimensional static images or movies.

[CellOrganizer](http://cellorganizer.org/) can learn models of

* cell shape
* nuclear shape
* chromatin texture
* vesicular organelle size, shape and position
* microtubule distribution.

These models can be conditional upon each other. For example, for a given synthesized cell instance, organelle position is dependent upon the cell and nuclear shape of that instance.

Cell types for which generative models for at least some organelles have been built include human HeLa cells, mouse NIH 3T3 cells, and Arabidopsis protoplasts. Planned projects include mouse T lymphocytes and rat PC12 cells.

### CellOrganizer v2.9.0

* TBA

## Docker

### Installing Docker

Installing Docker is beyond the scope of this document. To learn about Docker Community Edition (CE), click [here](https://www.docker.com/community-edition).

* To install Docker-for-Mac, click [here](https://docs.docker.com/docker-for-mac/install/).
* To install Docker-for-Windows, click [here](https://docs.docker.com/docker-for-windows/install/).

## About the Docker container
### Buillding or downloading image
To build an image using the `Dockerfile` in this repository, run the command

```
➜ bash ./build.sh
```

The previous step should build an image

```
➜ docker images

REPOSITORY                       TAG                 IMAGE ID            CREATED             SIZE
icaoberg/cellorganizer-jupyter   latest              be76be002cbd        36 hours ago        9.25GB```
```

To run a container using the image above

If you do not wish to build the container and would like to pull the latest copy from Dockerhub, running

```
➜  bash ./pull.sh
```

### Running the container
To spin a container from the image above, running

```
bash ./run.sh
```

Running the script `run.sh`

* create a folder on your Desktop called `data`
* download a collection of images to `data`
* will start the container

## Contributing

When contributing to this repository, please first discuss the change you wish to make via issue, [email](mailto:cellorganizer-dev@compbio.cmu.edu), or any other method with the owners of this repository before making a change.

---

Support for [CellOrganizer](http://cellorganizer.org/) has been provided by grants GM075205, GM090033 and GM103712 from the [National Institute of General Medical Sciences](http://www.nigms.nih.gov/), grants MCB1121919 and MCB1121793 from the [U.S. National Science Foundation](http://nsf.gov/), by a Forschungspreis from the [Alexander von Humboldt Foundation](http://www.humboldt-foundation.de/), and by the [Freiburg Institute for Advanced Studies](http://www.frias.uni-freiburg.de/lifenet?set_language=en).

[![MMBioS](https://i1.wp.com/www.cellorganizer.org/wp-content/uploads/2017/08/MMBioSlogo-e1503517857313.gif?h=60)](http://www.mmbios.org)

Copyright (c) 2007-2019 by the [Murphy Lab](http://murphylab.web.cmu.edu) at the [Computational Biology Department](http://www.cbd.cmu.edu) in [Carnegie Mellon University](http://www.cmu.edu)

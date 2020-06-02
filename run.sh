#!/bin/bash

if [ ! -d data ]; then
        DIRECTORY=$(pwd)

        ####################################################################################################
	# icaoberg - this creates temporary folder on Desktop and then downloads images from Murphy Lab site
	mkdir -p ~/Desktop/data/images
	cd ~/Desktop/data/images

	#wget -nc http://murphylab.web.cmu.edu/data/Hela/3D/multitiff/cellorganizer_full_image_collection.zip
	#unzip cellorganizer_full_image_collection.zip
	#rm -fv cellorganizer_full_image_collection.zip
        ####################################################################################################

	cd $DIRECTORY
fi

############################################################################################################
docker run --rm -p 8888:8888 \
	-v ~/Desktop/data:/home/murphylab/cellorganizer/local \
	--memory="4g" \
	--cpus=2 \
	-e JUPYTER_LAB_ENABLE=yes \
	icaoberg/cellorganizer-jupyter
############################################################################################################

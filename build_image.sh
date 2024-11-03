#!/bin/bash

mkdir -p image/image_builder/temp_modules
cp module_library/* image/image_builder/temp_modules/

cd image

docker compose up --build

rm -r image_builder/temp_modules

cd ..

sudo brickstrap create-tar roboliga2024:latest roboliga2024.tar
sudo brickstrap create-image roboliga2024.tar roboliga2024.img
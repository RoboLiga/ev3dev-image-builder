#!/bin/bash

mkdir -p precompiled_modules

(sudo ./build_modules.sh)

mv precompiled_modules/* module_library

(sudo ./build_image.sh)

docker rm roboliga2024_builder roboliga2024_module_builder
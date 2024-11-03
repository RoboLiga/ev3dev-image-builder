# Roboliga FRI ev3dev Image Builder

## Prerequisites

- Linux or WSL 2
- [Docker](https://www.docker.com/)
- [brickstrap](https://github.com/ev3dev/brickstrap)

## Running the scripts

### Only Building the image

1. Remove any unwanted modules or add additional precompiled modules to the [module_library directory](./module_library/)
2. Run [build_image.sh](./build_image.sh)
3. Once done, the finished image (`.img` file) will be in the root project folder.

### Only Building cPython 3.11 modules

1. Add the modules you are wishing to build to the [requirements file](./modules/module_builder/requirements.txt)
2. (optional) If the modules require specific develompent libraries available via apt add them to the [packages file](./modules/module_builder/packages.txt)
3. (optional) If the modules require specific precompiled python modules such as cmake, add the `.whl` (be careful to use platform compatible versions) files to the [prerequisites directory](./modules/module_builder/prerequisites/)
4. Run [build_modules.sh](./build_modules.sh)
5. Once done, compiled modules (`.whl` files) will be in the [precompiled_modules directory](./precompiled_modules/)

### Building cPython 3.11 modules and the image

1. Add any modules you are wishing to build to the [requirements file](./modules/module_builder/requirements.txt)
2. (*optional*) If the modules require specific develompent libraries available via apt add them to the [packages file](./modules/module_builder/packages.txt)
3. (*optional*) If the modules require specific precompiled python modules such as cmake, add the `.whl` (be careful to use platform compatible versions) files to the [prerequisites directory](./modules/module_builder/prerequisites/)
4. (*optional*) Add additional precompiled modules to the [module_library directory](./module_library/)
5. Run [full_build.sh](./full_build.sh)
6. Once done, the finished image (`.img` file) will be in the root project folder.

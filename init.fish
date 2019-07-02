# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

# TODO: check if defined?
set -g PLATFORMIO_HOME ~/.platformio
set -g platformio_prefix_short pio
set -g platformio_prefix_full platformio

# Default prefix
set -g platformio_prefix $platformio_prefix_short

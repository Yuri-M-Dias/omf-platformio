# Platformio commands
set commands account boards ci debug device home init lib platform remote run settings test update upgrade

complete -c $platformio_prefix -f -d "PlatformIO"

# Options
complete -c $platformio_prefix -l version -d "Show the version and exit"
complete -c $platformio_prefix -s f -l force -d "Force to accept any confirmation prompts"
complete -c $platformio_prefix -s c -l caller -x -d "Caller ID (service)" -a "TEXT"
complete -c $platformio_prefix -s h -l help -d "Show the help and exit"

# Commands
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a account -d "Manage PIO Account"

# Makes platformio inherit from pio
complete -c $platformio_prefix_full -w $platformio_prefix

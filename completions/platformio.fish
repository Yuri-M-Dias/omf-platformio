# Platformio commands
set commands account boards ci debug device home init lib platform remote run settings test update upgrade

complete -c pio -f -d "PlatformIO"

# Options
complete -c pio -l version -d "Show the version and exit"
complete -c pio -s f -l force -d "Force to accept any confirmation prompts"
complete -c pio -s c -l caller -x -d "Caller ID (service)" # Missing TEXT
complete -c pio -s h -l help -d "Show the help and exit"

# Commands
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a account -d "Manage PIO Account"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a boards -d "Embedded Board Explorer"

# Makes platformio inherit from pio
complete -c $platformio_prefix_full -w $platformio_prefix

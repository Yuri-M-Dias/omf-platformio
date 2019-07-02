# Platformio commands
set commands account boards ci debug device home init lib platform remote run settings test update upgrade

complete -c $platformio_prefix -f -d "PlatformIO"

# Options
complete -c $platformio_prefix -l version -d "Show the version and exit"
complete -c $platformio_prefix -s f -l force -d "Force to accept any confirmation prompts"
complete -c $platformio_prefix -s c -l caller -x -d "Caller ID (service)" # Missing TEXT
complete -c $platformio_prefix -s h -l help -d "Show the help and exit"

# Commands
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a account -d "Manage PIO Account"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a boards -d "Embedded Board Explorer"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a ci -d "Continuous Integration"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a debug -d "PIO Unified Debugger"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a device -d "Monitor device or list existing"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a home -d "PIO Home"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a init -d "Initialize PlatformIO project or update existing"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a lib -d "Library Manager"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a platform -d "Platform Manager"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a remote -d "PIO Remote"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a run -d "Process project environments"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a settings -d "Manage PlatformIO settings"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a test -d "Local Unit Testing"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a update -d "Update installed platforms, packages and libraries"
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a upgrade -d "Upgrade PlatformIO to the latest version"

# Makes platformio inherit from pio
complete -c $platformio_prefix_full -w $platformio_prefix

# Platformio commands
set commands account boards ci debug device home init lib platform remote run settings test update upgrade

function __platformio_ides
  echo "atom|clion|codeblocks|eclipse|emacs|netbeans|qtcreator|sublimetext|vim|visualstudio|vscode" | tr '|' '\n'
end

complete -c $platformio_prefix -f -d "PlatformIO"

# Options
complete -c $platformio_prefix -l version -d "Show the version and exit"
complete -c $platformio_prefix -s f -l force -d "Force to accept any confirmation prompts"
complete -c $platformio_prefix -s c -l caller -x -d "Caller ID (service)" # Missing TEXT
complete -c $platformio_prefix -s h -l help -d "Show the help and exit"

# Commands
## Account
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a account -d "Manage PIO Account"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from account" -a forgot -d "Forgot password"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from account" -a login -d "Log in to PIO Account"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from account" -a logout -d "Log out of PIO Account"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from account" -a password -d "Change password"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from account" -a register -d "Create new PIO Account"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from account" -a show -d "PIO Account information"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from account" -a token -d "Get or regenerate Authentication Token"

## Boards
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a boards -d "Embedded Board Explorer"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from boards" -l installed
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from boards" -l json-output

## CI
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a ci -d "Continuous Integration"
complete -c $platformio_prefix -n "__fish_seen_subcommand_from ci" -s l -l lib -d "DIRECTORY"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from ci" -l exclude -d "TEXT"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from ci" -s b -l board -d "ID"
complete -c $platformio_prefix -n "__fish_seen_subcommand_from ci" -l build-dir -d "DIRECTORY"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from ci" -l keep-build-dir
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from ci" -s C -l project-conf -d "PATH"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from ci" -s O -l project-option -d "TEXT"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from ci" -s v -l verbose

## Debug
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a debug -d "PIO Unified Debugger"
complete -c $platformio_prefix -n "__fish_seen_subcommand_from debug" -s d -l project-dir -d "DIRECTORY"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from debug" -s e -l environment -d "<environment>"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from debug" -s v -l verbose
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from debug" -l interface -d "[gdb]"

## Device
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a device -d "Monitor device or list existing"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from device" -a list -d "List devices"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from device" -a monitor -d "Monitor device (Serial)"

## Home
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a home -d "PIO Home"
complete -c $platformio_prefix -x -n "__fish_seen_subcommand_from home" -l port -d "HTTP port"
complete -c $platformio_prefix -x -n "__fish_seen_subcommand_from home" -l host -d "HTTP host"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from home" -l no-open

## Init
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a init -d "Initialize PlatformIO project or update existing"
complete -c $platformio_prefix -x -n "__fish_seen_subcommand_from init" -s d -l project-dir
complete -c $platformio_prefix -x -n "__fish_seen_subcommand_from init" -s b -l board
complete -c $platformio_prefix -x -n "__fish_seen_subcommand_from init" -l ide -a "(__platformio_ides)"
complete -c $platformio_prefix -x -n "__fish_seen_subcommand_from init" -s O -l project-option
complete -c $platformio_prefix -x -n "__fish_seen_subcommand_from init" -l env-prefix
complete -c $platformio_prefix -x -n "__fish_seen_subcommand_from init" -s s -l silent

## Lib
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a lib -d "Library Manager"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from lib" -a builtin -d "List built-in libraries"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from lib" -a install -d "Install library"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from lib" -a list -d "List installed libraries"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from lib" -a register -d "Register a new library"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from lib" -a search -d "Search for a new library"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from lib" -a show -d "Show detailed info about a library"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from lib" -a stats -d "Library Registry Statistics"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from lib" -a uninstall -d "Uninstall libraries"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from lib" -a update -d "Update installed libraries"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from lib" -s g -l global -d "Manage global PlatformIO library storage"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from lib" -s d -l storage-dir -d "Manage custom library storage"


## Platform
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a platform -d "Platform Manager"
## Remote
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a remote -d "PIO Remote"
## Run
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a run -d "Process project environments"

## Settings
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a settings -d "Manage PlatformIO settings"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from settings" -a get -d "Get existing setting/-s"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from settings" -a reset -d "Reset settings to default"
complete -c $platformio_prefix -f -n "__fish_seen_subcommand_from settings" -a set -d "Set new value for the setting"

## Test
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a test -d "Local Unit Testing"
## Update
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a update -d "Update installed platforms, packages and libraries"
## Upgrade
complete -c $platformio_prefix -f -n "__fish_use_subcommand" -a upgrade -d "Upgrade PlatformIO to the latest version"

# Makes platformio inherit from pio
complete -c $platformio_prefix_full -w $platformio_prefix

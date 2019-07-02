function pio -d "PlatformIO"
    if test -e $PLATFORMIO_HOME
        eval $PLATFORMIO_HOME/penv/bin/pio $argv
    else
        echo "You need to install platformio or bind the core to your command line (see https://docs.platformio.org/en/latest/installation.html)"
        return 1
    end
end

function platformio -d "PlatformIO"
    pio $argv
end

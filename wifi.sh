# ------ Wifi ------ #

wifi(){

    cmd=$1

    cecho white "\n\t󰖩 WiFi\n"

    case $cmd in

        on)
            nmcli radio wifi on
            ;;

        off)
            nmcli radio wifi off
            ;;

        list)
            nmcli dev wifi list
            ;;

        status)
            nmcli device status
            ;;

        connect)
            cecho blue " Trying to auto-connect"
            nmcli connection up $2 &> /dev/null
            if [ $? -eq 0 ]; then
                cecho green " Success"
            elif [ $? -ne 0 ]; then
                cecho red " Manual connection required"
                nmcli --ask dev wifi connect $2
            fi
            ;;

        deconnect)
            nmcli connection down $2 &> /dev/null
            if [ $? -eq 0 ]; then
                cecho green " Success"
            else
                cecho red " $2 is not an active network"
            fi
            ;;

        delete)
            nmcli connection delete $2 &> /dev/null
            if [ $? -eq 0 ]; then
                cecho green " Success"
            else
                cecho red " $2 isn't a registered connection"
            fi
            ;;

        show)
            nmcli device wifi show-password
            ;;

        help | "-h" | "--help" )
            cat ~/.files/wifi.help.txt
            ;;

        *)
            cecho red "Please enter a command or type: wifi --help"
    esac

}


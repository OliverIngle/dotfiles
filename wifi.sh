# ------ Wifi ------ #

wifi(){

    cmd=$1

    cecho white "󰖩 WiFi"

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
            nmcli connection down $2 &>
            ;;

        delete)
            nmcli connection delete $2
            ;;

        help | "-h" | "--help" )
            echo heeelppp
            ;;

        *)
            cecho red "Please enter a command or type: wifi --help"
    esac

}


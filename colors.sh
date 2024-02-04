cecho(){

    START="\033["
    END="\033[0m"

    case $1 in
        red)
            COLOR="38;5;9m" ;;
        blue)
            COLOR="38;5;12m" ;;
        green)
            COLOR="38;5;10m" ;;
        white)
            COLOR="38;5;231m" ;;
        grey)
            COLOR="38;5;7m" ;;
        *)
            COLOR="0m" ;;
    esac

    echo -e "${START}${COLOR}${2}${END}"

}

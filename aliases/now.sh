alias deploy-now='now alias $(echo "$(now rm $(now ls | grep expenser | tail -n 1 | awk "{ print $1}") -y && now --public)" | tail -n 1 | cut -c 9-) expenser.now.sh'

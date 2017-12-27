alias deploy-now='now rm $(now ls | grep expenses | tail -n 1 | awk "{ print $1}") -y && now deploy --public && now alias'

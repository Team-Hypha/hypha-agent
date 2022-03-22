if [[ $# != '3' ]]; then
    echo -e "Please pass the service name, gateway endpoint, and filepath arguments.\nSee README.md for an example."
    exit
fi

OTEL_SERVICE_NAME=$1 OTEL_GATEWAY_ENDPOINT=$2 LOG_FILE_PATH=$3 ./otelcol-contrib/otelcol-contrib --config ./otel-config.yaml &

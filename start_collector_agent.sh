if [[ $# != '2' ]]; then
    echo -e "Please pass both the service name and gateway endpoint arguments.\nSee README.md for an example."
    exit
fi

mkdir otelcol-contrib
cd otelcol-contrib

if [ `uname -m` = "x86_64" ]; then
    curl -LO https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.47.0/otelcol-contrib_0.47.0_linux_amd64.tar.gz
    tar -xvf otelcol-contrib_0.47.0_linux_amd64.tar.gz
elif [ `uname -m` = "aarch64" ]; then
    curl -LO https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.47.0/otelcol-contrib_0.47.0_linux_arm64.tar.gz
    tar -xvf otelcol-contrib_0.47.0_linux_arm64.tar.gz
fi

OTEL_SERVICE_NAME=$1 OTEL_GATEWAY_ENDPOINT=$2 ./otelcol-contrib --config ../otel-config.yaml &

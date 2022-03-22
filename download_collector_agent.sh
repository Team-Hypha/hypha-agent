mkdir otelcol-contrib && cd otelcol-contrib

if [ `uname -m` = "x86_64" ]; then
    curl -LO https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.47.0/otelcol-contrib_0.47.0_linux_amd64.tar.gz
    tar -xvf otelcol-contrib_0.47.0_linux_amd64.tar.gz
elif [ `uname -m` = "aarch64" ]; then
    curl -LO https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.47.0/otelcol-contrib_0.47.0_linux_arm64.tar.gz
    tar -xvf otelcol-contrib_0.47.0_linux_arm64.tar.gz
fi
mkdir hypha-agent && cd hypha-agent

curl -LO https://raw.githubusercontent.com/Team-Hypha/hypha-agent/main/download_collector_agent.sh
curl -LO https://raw.githubusercontent.com/Team-Hypha/hypha-agent/main/start_collector_agent.sh
curl -LO https://raw.githubusercontent.com/Team-Hypha/hypha-agent/main/otel-config.yaml

bash ./download_collector_agent
bash ./start_collector_agent $1 $2 $3
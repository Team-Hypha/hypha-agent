mkdir hypha-agent && cd hypha-agent

curl -LO https://github/team-hypha/hypha-agent/otel-config.yaml
curl -LO https://github/team-hypha/hypha-agent/download_collector_agent.sh
curl -LO https://github/team-hypha/hypha-agent/start_collector_agent.sh

bash ./download_collector_agent
bash ./start_collector_agent $1 $2 $3
To install, connect to your VM and run:
Pass the service name & gateway endpionts arguments
`curl -o- https://github/team-hypha/hypha-agent/install.sh service1 192.167.1.1:3478 | bash`

creates hypha-agent
downloads `dowload_collector_agent.sh`
downloads `start_collector_agent.sh`
downloads `otel-config.yaml`
runs download
runs start

That will download and start the collector agent.

Should we use otel-colletor build tool to build contrib with minimal modules?

# Hypha Agent

The Hypha agent is an OTel collector deployed as an agent & configured to read log files and receive traces. To use the agent, you will need to run our install script and require our tracing file when running your Node application. Repeat this process for each service in your system.

IMPORTANT: You will need to deploy the hypha-backend first to get your gateway collector endpoint. This is the IP:port where the hypha-agent will send telemetry data.

## Agent Setup

Follow these steps to run the agent:
1. SSH into your VM
2. Download the install script `curl -O https://raw.githubusercontent.com/Team-Hypha/hypha-agent/main/install.sh`.
3. Run `bash install.sh <service_name> <gateway_collector> <log_file_path>`. The script takes three arguments; make sure you have the correct order.


### Guidance on the 3 arguments for `install.sh`
- Be sure to wrap each argument in quotes.
- `<service_name>` defines the service name tag used to identify logs and traces. Example: `"service1"`.
- `<gateway_collector>` is the host address of the OTel gateway collector. It's an IP address and port combination. Example: `"192.167.1.1:3478"`. This is the address where the gateway collector of the Hypha backend receives logs and traces.
- `<log_file_path>` defines the path to the file(s) containing logs output by the service. **Use an absolute file path**. Optionally can use \_. Example: `"/home/ec2-user/lab-demo/services/*/logs/*.json"`

## Instrument your application
1. cd into your application directory and download the Hypha instrumentation file `curl -O https://raw.githubusercontent.com/Team-Hypha/hypha-agent/main/tracing.js`
2. To run your application, use `node -r tracing.js <applicationfile>.js`


#### Install Script Explanation

The `install.sh` script creates a `hypha-agent/` folder and downloads:

- `download_collector_agent.sh`
  - Downloads the OTel collector contrib v0.47.0 binary appropriate for the processor architecture (x86 or ARM).
- `start_collector_agent.sh`
  - Uses the arguments passed to `install.sh` to configure the agent collector for the service; starts the agent collector.
- `otel-config.yaml`
